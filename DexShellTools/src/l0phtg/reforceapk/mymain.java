package l0phtg.reforceapk;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.zip.Adler32;

/**
 * Created by heiheihei on 2017/5/8.
 */
public class mymain {

    public static void main(String[] args) {
        try {
            File payloadSrcFile = new File("force/ForceApkObj.apk");
            System.out.println("apk size:" + payloadSrcFile.length());
            File unShellDexFile = new File("force/ForceApkObj.dex");
            byte[] payloadArray = encrypt(readFileBytes(payloadSrcFile));
            byte[] unShellDexArray = readFileBytes(unShellDexFile);
            int payloadLen = payloadArray.length;
            int unShellDexLen = unShellDexArray.length;
            int totalLen = payloadLen + unShellDexLen + 4;
            byte[] newDex = new byte[totalLen];

            System.arraycopy(unShellDexArray, 0, newDex, 0, unShellDexLen);
            System.arraycopy(payloadArray, 0, newDex, unShellDexLen, payloadLen);
            System.arraycopy(intToByte(payloadLen), 0, newDex, totalLen-4, 4);
            fixFileSizeHeader(newDex);
            fixSHA1SumHeader(newDex);
            fixCheckSumHeader(newDex);

            String str = "force/classes.dex";
            File file = new File(str);
            if (!file.exists()) {
                file.createNewFile();
            }

            FileOutputStream localFileOutputStream = new FileOutputStream(str);
            localFileOutputStream.write(newDex);
            localFileOutputStream.flush();
            localFileOutputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    static byte[] encrypt(byte[] srcData)
    {
        for (int i = 0; i < srcData.length; i++) {
            srcData[i] = (byte)(0xFF ^ srcData[i]);
        }
        return srcData;
    }

    private static void fixCheckSumHeader(byte[] dexBytes)
    {
        Adler32 adler = new Adler32();
        adler.update(dexBytes, 12, dexBytes.length - 12);
        long value = adler.getValue();
        int va = (int) value;
        byte[] newcs = intToByte(va);
        byte[] recs = new byte[4];
        for (int i = 0; i < 4; i++) {
            recs[i] = newcs[newcs.length - 1 - i];
            System.out.println(Integer.toHexString(newcs[i]));
        }
        System.arraycopy(recs, 0, dexBytes, 8, 4);
        System.out.println(Long.toHexString(value));
        System.out.println();
    }

    public static byte[] intToByte(int number) {
        byte[] b = new byte[4];
        for (int i = 3; i >= 0; i--) {
            b[i] = (byte) (number % 256);
            number >>= 8;
        }
        return b;
    }

    private static void fixSHA1SumHeader(byte[] dexBytes)
        throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("SHA-1");
        md.update(dexBytes, 32, dexBytes.length - 32);
        byte[] newdt = md.digest();
        System.arraycopy(newdt, 0, dexBytes, 12, 20);

        String hexStr = "";
        for (int i = 0; i < newdt.length; i++) {
            hexStr += Integer.toString((newdt[i] & 0xff) + 0x100, 16).substring(1);
        }
        System.out.println(hexStr);
    }

    private static void fixFileSizeHeader(byte[] dexBytes) {
        byte[] newfs = intToByte(dexBytes.length);
        System.out.println(Integer.toHexString(dexBytes.length));
        byte[] refs = new byte[4];

        for (int i = 0; i < 4; i++) {
            refs[i] = newfs[newfs.length - 1 -i];
            System.out.println(Integer.toHexString(newfs[i]));
        }
        System.arraycopy(refs, 0, dexBytes, 32, 4);
    }

    static byte [] readFileBytes(File file) throws IOException
    {
        byte[] arrayOfByte = new byte[1024];
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fis = new FileInputStream(file);
        while (true) {
            int i = fis.read(arrayOfByte);
            if (i != -1) {
                localByteArrayOutputStream.write(arrayOfByte, 0, i);
            } else {
                return localByteArrayOutputStream.toByteArray();
            }
        }
    }
}
