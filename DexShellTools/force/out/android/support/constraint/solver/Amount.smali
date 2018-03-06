.class Landroid/support/constraint/solver/Amount;
.super Ljava/lang/Object;
.source "Amount.java"


# instance fields
.field private mDenominator:I

.field private mNumerator:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "numerator"    # I

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 24
    iput v1, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    .line 42
    iput p1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 43
    iput v1, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    .line 44
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    .line 32
    iput p1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 33
    iput p2, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    .line 34
    invoke-direct {p0}, Landroid/support/constraint/solver/Amount;->simplify()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/Amount;)V
    .registers 3
    .param p1, "amount"    # Landroid/support/constraint/solver/Amount;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    .line 47
    iget v0, p1, Landroid/support/constraint/solver/Amount;->mNumerator:I

    iput v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 48
    iget v0, p1, Landroid/support/constraint/solver/Amount;->mDenominator:I

    iput v0, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    .line 49
    invoke-direct {p0}, Landroid/support/constraint/solver/Amount;->simplify()V

    .line 50
    return-void
.end method

.method private static gcd(II)I
    .registers 5
    .param p0, "u"    # I
    .param p1, "v"    # I

    .prologue
    .line 218
    if-gez p0, :cond_4

    .line 219
    mul-int/lit8 p0, p0, -0x1

    .line 222
    :cond_4
    if-gez p1, :cond_8

    .line 223
    mul-int/lit8 p1, p1, -0x1

    .line 226
    :cond_8
    if-nez p0, :cond_c

    move p0, p1

    .line 252
    .end local p0    # "u":I
    :cond_b
    :goto_b
    return p0

    .line 230
    .restart local p0    # "u":I
    :cond_c
    if-eqz p1, :cond_b

    .line 234
    const/4 v0, 0x0

    .local v0, "shift":I
    :goto_f
    or-int v2, p0, p1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1c

    .line 235
    shr-int/lit8 p0, p0, 0x1

    .line 236
    shr-int/lit8 p1, p1, 0x1

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 239
    :cond_1c
    :goto_1c
    and-int/lit8 v2, p0, 0x1

    if-nez v2, :cond_23

    .line 240
    shr-int/lit8 p0, p0, 0x1

    goto :goto_1c

    .line 244
    :cond_23
    :goto_23
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_2a

    .line 245
    shr-int/lit8 p1, p1, 0x1

    goto :goto_23

    .line 247
    :cond_2a
    if-le p0, p1, :cond_2f

    .line 248
    move v1, p1

    .local v1, "t":I
    move p1, p0

    move p0, v1

    .line 250
    .end local v1    # "t":I
    :cond_2f
    sub-int/2addr p1, p0

    .line 251
    if-nez p1, :cond_23

    .line 252
    shl-int/2addr p0, v0

    goto :goto_b
.end method

.method private simplify()V
    .registers 4

    .prologue
    .line 190
    iget v1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    if-gez v1, :cond_30

    iget v1, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    if-gez v1, :cond_30

    .line 191
    iget v1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 192
    iget v1, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    .line 197
    :cond_14
    :goto_14
    iget v1, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2f

    .line 199
    iget v1, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_45

    iget v1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_45

    .line 200
    const/4 v0, 0x2

    .line 204
    .local v0, "commonDenominator":I
    :goto_25
    iget v1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    div-int/2addr v1, v0

    iput v1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 205
    iget v1, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    div-int/2addr v1, v0

    iput v1, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    .line 207
    .end local v0    # "commonDenominator":I
    :cond_2f
    return-void

    .line 193
    :cond_30
    iget v1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    if-ltz v1, :cond_14

    iget v1, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    if-gez v1, :cond_14

    .line 194
    iget v1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 195
    iget v1, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    goto :goto_14

    .line 202
    :cond_45
    iget v1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    iget v2, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    invoke-static {v1, v2}, Landroid/support/constraint/solver/Amount;->gcd(II)I

    move-result v0

    .restart local v0    # "commonDenominator":I
    goto :goto_25
.end method


# virtual methods
.method public add(I)Landroid/support/constraint/solver/Amount;
    .registers 4
    .param p1, "amount"    # I

    .prologue
    .line 85
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    iget v1, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 86
    return-object p0
.end method

.method public add(Landroid/support/constraint/solver/Amount;)Landroid/support/constraint/solver/Amount;
    .registers 5
    .param p1, "amount"    # Landroid/support/constraint/solver/Amount;

    .prologue
    .line 69
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    iget v1, p1, Landroid/support/constraint/solver/Amount;->mDenominator:I

    if-ne v0, v1, :cond_11

    .line 70
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    iget v1, p1, Landroid/support/constraint/solver/Amount;->mNumerator:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 75
    :goto_d
    invoke-direct {p0}, Landroid/support/constraint/solver/Amount;->simplify()V

    .line 76
    return-object p0

    .line 72
    :cond_11
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    iget v1, p1, Landroid/support/constraint/solver/Amount;->mDenominator:I

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/support/constraint/solver/Amount;->mNumerator:I

    iget v2, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 73
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    iget v1, p1, Landroid/support/constraint/solver/Amount;->mDenominator:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    goto :goto_d
.end method

.method public divide(Landroid/support/constraint/solver/Amount;)Landroid/support/constraint/solver/Amount;
    .registers 6
    .param p1, "amount"    # Landroid/support/constraint/solver/Amount;

    .prologue
    .line 123
    iget v1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 124
    .local v1, "preN":I
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    .line 125
    .local v0, "preD":I
    iget v2, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    iget v3, p1, Landroid/support/constraint/solver/Amount;->mDenominator:I

    mul-int/2addr v2, v3

    iput v2, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 126
    iget v2, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    iget v3, p1, Landroid/support/constraint/solver/Amount;->mNumerator:I

    mul-int/2addr v2, v3

    iput v2, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    .line 127
    invoke-direct {p0}, Landroid/support/constraint/solver/Amount;->simplify()V

    .line 128
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    if-ne p0, p1, :cond_5

    .line 179
    :cond_4
    :goto_4
    return v1

    .line 175
    :cond_5
    instance-of v3, p1, Landroid/support/constraint/solver/Amount;

    if-nez v3, :cond_b

    move v1, v2

    .line 176
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 178
    check-cast v0, Landroid/support/constraint/solver/Amount;

    .line 179
    .local v0, "a":Landroid/support/constraint/solver/Amount;
    iget v3, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    iget v4, v0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    if-ne v3, v4, :cond_1a

    iget v3, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    iget v4, v0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    if-eq v3, v4, :cond_4

    :cond_1a
    move v1, v2

    goto :goto_4
.end method

.method public getDenominator()I
    .registers 2

    .prologue
    .line 163
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    return v0
.end method

.method public getNumerator()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    return v0
.end method

.method public inverse()Landroid/support/constraint/solver/Amount;
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 149
    invoke-direct {p0}, Landroid/support/constraint/solver/Amount;->simplify()V

    .line 150
    return-object p0
.end method

.method public inverseFraction()Landroid/support/constraint/solver/Amount;
    .registers 3

    .prologue
    .line 136
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 137
    .local v0, "n":I
    iget v1, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    iput v1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 138
    iput v0, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    .line 139
    invoke-direct {p0}, Landroid/support/constraint/solver/Amount;->simplify()V

    .line 140
    return-object p0
.end method

.method public isMinusOne()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 268
    iget v1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    iget v1, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    if-ne v1, v0, :cond_b

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isNegative()Z
    .registers 2

    .prologue
    .line 284
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isNull()Z
    .registers 2

    .prologue
    .line 292
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isOne()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 260
    iget v1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    if-ne v1, v0, :cond_a

    iget v1, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isPositive()Z
    .registers 2

    .prologue
    .line 276
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    if-ltz v0, :cond_a

    iget v0, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public multiply(Landroid/support/constraint/solver/Amount;)Landroid/support/constraint/solver/Amount;
    .registers 4
    .param p1, "amount"    # Landroid/support/constraint/solver/Amount;

    .prologue
    .line 111
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    iget v1, p1, Landroid/support/constraint/solver/Amount;->mNumerator:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 112
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    iget v1, p1, Landroid/support/constraint/solver/Amount;->mDenominator:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    .line 113
    invoke-direct {p0}, Landroid/support/constraint/solver/Amount;->simplify()V

    .line 114
    return-object p0
.end method

.method public set(II)V
    .registers 3
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I

    .prologue
    .line 58
    iput p1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 59
    iput p2, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    .line 60
    invoke-direct {p0}, Landroid/support/constraint/solver/Amount;->simplify()V

    .line 61
    return-void
.end method

.method public setToZero()V
    .registers 2

    .prologue
    .line 299
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 300
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    .line 301
    return-void
.end method

.method public substract(Landroid/support/constraint/solver/Amount;)Landroid/support/constraint/solver/Amount;
    .registers 5
    .param p1, "amount"    # Landroid/support/constraint/solver/Amount;

    .prologue
    .line 95
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    iget v1, p1, Landroid/support/constraint/solver/Amount;->mDenominator:I

    if-ne v0, v1, :cond_11

    .line 96
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    iget v1, p1, Landroid/support/constraint/solver/Amount;->mNumerator:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 101
    :goto_d
    invoke-direct {p0}, Landroid/support/constraint/solver/Amount;->simplify()V

    .line 102
    return-object p0

    .line 98
    :cond_11
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    iget v1, p1, Landroid/support/constraint/solver/Amount;->mDenominator:I

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/support/constraint/solver/Amount;->mNumerator:I

    iget v2, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    .line 99
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    iget v1, p1, Landroid/support/constraint/solver/Amount;->mDenominator:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    goto :goto_d
.end method

.method public toFloat()F
    .registers 3

    .prologue
    .line 308
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_d

    .line 309
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 311
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 320
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    if-ne v0, v1, :cond_43

    .line 321
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    if-eq v0, v1, :cond_e

    iget v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 322
    :cond_e
    const-string v0, ""

    .line 332
    :goto_10
    return-object v0

    .line 324
    :cond_11
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    if-gez v0, :cond_2d

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 327
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 329
    :cond_43
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    if-gez v0, :cond_6b

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 332
    :cond_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public valueString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 336
    iget v0, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    :goto_1a
    return-object v0

    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/Amount;->mNumerator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/solver/Amount;->mDenominator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method
