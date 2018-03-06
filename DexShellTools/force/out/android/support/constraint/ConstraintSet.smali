.class public Landroid/support/constraint/ConstraintSet;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintSet$Constraint;
    }
.end annotation


# static fields
.field public static final BASELINE:I = 0x5

.field private static final BASELINE_TO_BASELINE:I = 0x1

.field public static final BOTTOM:I = 0x4

.field private static final BOTTOM_MARGIN:I = 0x2

.field private static final BOTTOM_TO_BOTTOM:I = 0x3

.field private static final BOTTOM_TO_TOP:I = 0x4

.field private static final DEBUG:Z = false

.field private static final DIMENSION_RATIO:I = 0x5

.field private static final EDITOR_ABSOLUTE_X:I = 0x6

.field private static final EDITOR_ABSOLUTE_Y:I = 0x7

.field public static final END:I = 0x7

.field private static final END_MARGIN:I = 0x8

.field private static final END_TO_END:I = 0x9

.field private static final END_TO_START:I = 0xa

.field public static final GONE:I = 0x8

.field private static final GONE_BOTTOM_MARGIN:I = 0xb

.field private static final GONE_END_MARGIN:I = 0xc

.field private static final GONE_LEFT_MARGIN:I = 0xd

.field private static final GONE_RIGHT_MARGIN:I = 0xe

.field private static final GONE_START_MARGIN:I = 0xf

.field private static final GONE_TOP_MARGIN:I = 0x10

.field private static final GUIDE_BEGIN:I = 0x11

.field private static final GUIDE_END:I = 0x12

.field private static final GUIDE_PERCENT:I = 0x13

.field public static final HORIZONTAL:I = 0x0

.field private static final HORIZONTAL_BIAS:I = 0x14

.field public static final HORIZONTAL_GUIDELINE:I = 0x0

.field private static final HORIZONTAL_PACK:I = 0x29

.field private static final HORIZONTAL_WEIGHT:I = 0x27

.field public static final INVISIBLE:I = 0x4

.field private static final LAYOUT_HEIGHT:I = 0x15

.field private static final LAYOUT_VISIBILITY:I = 0x16

.field private static final LAYOUT_WIDTH:I = 0x17

.field public static final LEFT:I = 0x1

.field private static final LEFT_MARGIN:I = 0x18

.field private static final LEFT_TO_LEFT:I = 0x19

.field private static final LEFT_TO_RIGHT:I = 0x1a

.field public static final MATCH_CONSTRAINT:I = 0x0

.field private static final ORIENTATION:I = 0x1b

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field private static final RIGHT_MARGIN:I = 0x1c

.field private static final RIGHT_TO_LEFT:I = 0x1d

.field private static final RIGHT_TO_RIGHT:I = 0x1e

.field public static final START:I = 0x6

.field private static final START_MARGIN:I = 0x1f

.field private static final START_TO_END:I = 0x20

.field private static final START_TO_START:I = 0x21

.field private static final TAG:Ljava/lang/String; = "ConstraintSet"

.field public static final TOP:I = 0x3

.field private static final TOP_MARGIN:I = 0x22

.field private static final TOP_TO_BOTTOM:I = 0x23

.field private static final TOP_TO_TOP:I = 0x24

.field private static final UNUSED:I = 0x2b

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_BIAS:I = 0x25

.field public static final VERTICAL_GUIDELINE:I = 0x1

.field private static final VERTICAL_PACK:I = 0x2a

.field private static final VERTICAL_WEIGHT:I = 0x28

.field private static final VIEW_ID:I = 0x26

.field private static final VISIBILITY_FLAGS:[I

.field public static final VISIBLE:I = 0x0

.field public static final WRAP_CONTENT:I = -0x2

.field private static mapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field private mConstraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/support/constraint/ConstraintSet$Constraint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x3

    const/16 v3, 0x2b

    .line 158
    new-array v0, v4, [I

    fill-array-data v0, :array_1a8

    sput-object v0, Landroid/support/constraint/ConstraintSet;->VISIBILITY_FLAGS:[I

    .line 162
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    .line 210
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintLeft_toLeftOf:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 211
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintLeft_toRightOf:I

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 212
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintRight_toLeftOf:I

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 213
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintRight_toRightOf:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 214
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintTop_toTopOf:I

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 215
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintTop_toBottomOf:I

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 216
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBottom_toTopOf:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 217
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBottom_toBottomOf:I

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 218
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 220
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 221
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 222
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 223
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 224
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 225
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_orientation:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 226
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintStart_toEndOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 227
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintStart_toStartOf:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 228
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 229
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 230
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 231
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 232
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 233
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 234
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 235
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 236
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintVertical_weight:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 237
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHorizontal_weight:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 238
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHorizontal_chainPacked:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 239
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintVertical_chainPacked:I

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 243
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 244
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintVertical_bias:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 245
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 246
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintLeft_creator:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 247
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 248
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 249
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 250
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 251
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginLeft:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 252
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginRight:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 253
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginStart:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 254
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 255
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginTop:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 256
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 257
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_width:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 258
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 259
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_visibility:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 260
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_id:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 261
    return-void

    .line 158
    nop

    :array_1a8
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    return-void
.end method

.method private centerHorizontally(IIIIIIIF)V
    .registers 16
    .param p1, "centerID"    # I
    .param p2, "leftId"    # I
    .param p3, "leftSide"    # I
    .param p4, "leftMargin"    # I
    .param p5, "rightId"    # I
    .param p6, "rightSide"    # I
    .param p7, "rightMargin"    # I
    .param p8, "bias"    # F

    .prologue
    .line 513
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 514
    const/4 v2, 0x2

    move-object v0, p0

    move v1, p1

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 515
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 516
    .local v6, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    iput p8, v6, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 517
    return-void
.end method

.method private centerVertically(IIIIIIIF)V
    .registers 16
    .param p1, "centerID"    # I
    .param p2, "topId"    # I
    .param p3, "topSide"    # I
    .param p4, "topMargin"    # I
    .param p5, "bottomId"    # I
    .param p6, "bottomSide"    # I
    .param p7, "bottomMargin"    # I
    .param p8, "bias"    # F

    .prologue
    .line 520
    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 521
    const/4 v2, 0x4

    move-object v0, p0

    move v1, p1

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 522
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 523
    .local v6, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    iput p8, v6, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    .line 524
    return-void
.end method

.method private fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintSet$Constraint;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1016
    new-instance v1, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    .line 1017
    .local v1, "c":Landroid/support/constraint/ConstraintSet$Constraint;
    sget-object v2, Landroid/support/constraint/R$styleable;->ConstraintSet:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1018
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1, v0}, Landroid/support/constraint/ConstraintSet;->populateConstraint(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V

    .line 1019
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1020
    return-object v1
.end method

.method private get(I)Landroid/support/constraint/ConstraintSet$Constraint;
    .registers 6
    .param p1, "id"    # I

    .prologue
    .line 939
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 940
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    :cond_1b
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    return-object v0
.end method

.method private static lookupID(Landroid/content/res/TypedArray;II)I
    .registers 5
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "def"    # I

    .prologue
    const/4 v1, -0x1

    .line 1008
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 1009
    .local v0, "ret":I
    if-ne v0, v1, :cond_b

    .line 1010
    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 1012
    :cond_b
    return v0
.end method

.method private populateConstraint(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V
    .registers 20
    .param p1, "c"    # Landroid/support/constraint/ConstraintSet$Constraint;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1024
    invoke-virtual/range {p2 .. p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 1025
    .local v1, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    if-ge v8, v1, :cond_38e

    .line 1026
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 1061
    .local v2, "attr":I
    sget-object v14, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v14

    packed-switch v14, :pswitch_data_390

    .line 1238
    const-string v14, "ConstraintSet"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown attribute 0x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "   "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_44
    :goto_44
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1063
    :pswitch_47
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    move-object/from16 v0, p2

    invoke-static {v0, v2, v14}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    goto :goto_44

    .line 1066
    :pswitch_56
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    move-object/from16 v0, p2

    invoke-static {v0, v2, v14}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    goto :goto_44

    .line 1069
    :pswitch_65
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    move-object/from16 v0, p2

    invoke-static {v0, v2, v14}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    goto :goto_44

    .line 1072
    :pswitch_74
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    move-object/from16 v0, p2

    invoke-static {v0, v2, v14}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    goto :goto_44

    .line 1075
    :pswitch_83
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    move-object/from16 v0, p2

    invoke-static {v0, v2, v14}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    goto :goto_44

    .line 1078
    :pswitch_92
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    move-object/from16 v0, p2

    invoke-static {v0, v2, v14}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    goto :goto_44

    .line 1081
    :pswitch_a1
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    move-object/from16 v0, p2

    invoke-static {v0, v2, v14}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    goto :goto_44

    .line 1084
    :pswitch_b0
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    move-object/from16 v0, p2

    invoke-static {v0, v2, v14}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    goto :goto_44

    .line 1087
    :pswitch_bf
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    move-object/from16 v0, p2

    invoke-static {v0, v2, v14}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto/16 :goto_44

    .line 1090
    :pswitch_cf
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteX:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteX:I

    goto/16 :goto_44

    .line 1093
    :pswitch_df
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteY:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteY:I

    goto/16 :goto_44

    .line 1096
    :pswitch_ef
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    goto/16 :goto_44

    .line 1099
    :pswitch_ff
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    goto/16 :goto_44

    .line 1102
    :pswitch_10f
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    goto/16 :goto_44

    .line 1105
    :pswitch_11f
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    goto/16 :goto_44

    .line 1108
    :pswitch_12f
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    move-object/from16 v0, p2

    invoke-static {v0, v2, v14}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    goto/16 :goto_44

    .line 1111
    :pswitch_13f
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    move-object/from16 v0, p2

    invoke-static {v0, v2, v14}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    goto/16 :goto_44

    .line 1114
    :pswitch_14f
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    move-object/from16 v0, p2

    invoke-static {v0, v2, v14}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    goto/16 :goto_44

    .line 1117
    :pswitch_15f
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    move-object/from16 v0, p2

    invoke-static {v0, v2, v14}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    goto/16 :goto_44

    .line 1120
    :pswitch_16f
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    goto/16 :goto_44

    .line 1123
    :pswitch_17f
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    goto/16 :goto_44

    .line 1126
    :pswitch_18f
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    goto/16 :goto_44

    .line 1129
    :pswitch_19f
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    goto/16 :goto_44

    .line 1132
    :pswitch_1af
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    goto/16 :goto_44

    .line 1135
    :pswitch_1bf
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    goto/16 :goto_44

    .line 1138
    :pswitch_1cf
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    goto/16 :goto_44

    .line 1141
    :pswitch_1df
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    goto/16 :goto_44

    .line 1144
    :pswitch_1ef
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    goto/16 :goto_44

    .line 1147
    :pswitch_1ff
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    goto/16 :goto_44

    .line 1150
    :pswitch_20f
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    goto/16 :goto_44

    .line 1153
    :pswitch_21f
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    goto/16 :goto_44

    .line 1156
    :pswitch_22f
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    goto/16 :goto_44

    .line 1159
    :pswitch_23f
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    goto/16 :goto_44

    .line 1162
    :pswitch_24f
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    goto/16 :goto_44

    .line 1165
    :pswitch_25f
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    goto/16 :goto_44

    .line 1168
    :pswitch_26f
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    .line 1169
    sget-object v14, Landroid/support/constraint/ConstraintSet;->VISIBILITY_FLAGS:[I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    aget v14, v14, v15

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    goto/16 :goto_44

    .line 1172
    :pswitch_28b
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    goto/16 :goto_44

    .line 1175
    :pswitch_29b
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    goto/16 :goto_44

    .line 1178
    :pswitch_2ab
    move-object/from16 v0, p1

    iget-boolean v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainPacked:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainPacked:Z

    goto/16 :goto_44

    .line 1181
    :pswitch_2bb
    move-object/from16 v0, p1

    iget-boolean v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainPacked:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainPacked:Z

    goto/16 :goto_44

    .line 1184
    :pswitch_2cb
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    goto/16 :goto_44

    .line 1187
    :pswitch_2db
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1188
    .local v13, "ratio":Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatio:F

    .line 1189
    const/4 v14, -0x1

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatioSide:I

    .line 1190
    if-eqz v13, :cond_44

    .line 1191
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v9

    .line 1192
    .local v9, "len":I
    const/16 v14, 0x2c

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1193
    .local v4, "commaIndex":I
    if-lez v4, :cond_369

    add-int/lit8 v14, v9, -0x1

    if-ge v4, v14, :cond_369

    .line 1194
    const/4 v14, 0x0

    invoke-virtual {v13, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1195
    .local v7, "dimension":Ljava/lang/String;
    const-string v14, "W"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_35b

    .line 1196
    const/4 v14, 0x0

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatioSide:I

    .line 1200
    :cond_30f
    :goto_30f
    add-int/lit8 v4, v4, 0x1

    .line 1204
    .end local v7    # "dimension":Ljava/lang/String;
    :goto_311
    const/16 v14, 0x3a

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1205
    .local v3, "colonIndex":I
    if-ltz v3, :cond_377

    add-int/lit8 v14, v9, -0x1

    if-ge v3, v14, :cond_377

    .line 1206
    invoke-virtual {v13, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1207
    .local v10, "nominator":Ljava/lang/String;
    add-int/lit8 v14, v3, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1208
    .local v5, "denominator":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_44

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_44

    .line 1210
    :try_start_333
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 1211
    .local v11, "nominatorValue":F
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 1212
    .local v6, "denominatorValue":F
    const/4 v14, 0x0

    cmpl-float v14, v11, v14

    if-lez v14, :cond_44

    const/4 v14, 0x0

    cmpl-float v14, v6, v14

    if-lez v14, :cond_44

    .line 1213
    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatioSide:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_36b

    .line 1214
    div-float v14, v6, v11

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatio:F
    :try_end_356
    .catch Ljava/lang/NumberFormatException; {:try_start_333 .. :try_end_356} :catch_358

    goto/16 :goto_44

    .line 1219
    .end local v6    # "denominatorValue":F
    .end local v11    # "nominatorValue":F
    :catch_358
    move-exception v14

    goto/16 :goto_44

    .line 1197
    .end local v3    # "colonIndex":I
    .end local v5    # "denominator":Ljava/lang/String;
    .end local v10    # "nominator":Ljava/lang/String;
    .restart local v7    # "dimension":Ljava/lang/String;
    :cond_35b
    const-string v14, "H"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_30f

    .line 1198
    const/4 v14, 0x1

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatioSide:I

    goto :goto_30f

    .line 1202
    .end local v7    # "dimension":Ljava/lang/String;
    :cond_369
    const/4 v4, 0x0

    goto :goto_311

    .line 1216
    .restart local v3    # "colonIndex":I
    .restart local v5    # "denominator":Ljava/lang/String;
    .restart local v6    # "denominatorValue":F
    .restart local v10    # "nominator":Ljava/lang/String;
    .restart local v11    # "nominatorValue":F
    :cond_36b
    div-float v14, v11, v6

    :try_start_36d
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatio:F
    :try_end_375
    .catch Ljava/lang/NumberFormatException; {:try_start_36d .. :try_end_375} :catch_358

    goto/16 :goto_44

    .line 1224
    .end local v5    # "denominator":Ljava/lang/String;
    .end local v6    # "denominatorValue":F
    .end local v10    # "nominator":Ljava/lang/String;
    .end local v11    # "nominatorValue":F
    :cond_377
    invoke-virtual {v13, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 1225
    .local v12, "r":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_44

    .line 1227
    :try_start_381
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    move-object/from16 v0, p1

    iput v14, v0, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatio:F
    :try_end_389
    .catch Ljava/lang/NumberFormatException; {:try_start_381 .. :try_end_389} :catch_38b

    goto/16 :goto_44

    .line 1228
    :catch_38b
    move-exception v14

    goto/16 :goto_44

    .line 1241
    .end local v2    # "attr":I
    .end local v3    # "colonIndex":I
    .end local v4    # "commaIndex":I
    .end local v9    # "len":I
    .end local v12    # "r":Ljava/lang/String;
    .end local v13    # "ratio":Ljava/lang/String;
    :cond_38e
    return-void

    .line 1061
    nop

    :pswitch_data_390
    .packed-switch 0x1
        :pswitch_bf
        :pswitch_23f
        :pswitch_b0
        :pswitch_a1
        :pswitch_2db
        :pswitch_cf
        :pswitch_df
        :pswitch_21f
        :pswitch_15f
        :pswitch_14f
        :pswitch_19f
        :pswitch_1bf
        :pswitch_16f
        :pswitch_18f
        :pswitch_1af
        :pswitch_17f
        :pswitch_ef
        :pswitch_ff
        :pswitch_10f
        :pswitch_1cf
        :pswitch_25f
        :pswitch_26f
        :pswitch_24f
        :pswitch_1ef
        :pswitch_47
        :pswitch_56
        :pswitch_11f
        :pswitch_1ff
        :pswitch_65
        :pswitch_74
        :pswitch_20f
        :pswitch_12f
        :pswitch_13f
        :pswitch_22f
        :pswitch_92
        :pswitch_83
        :pswitch_1df
        :pswitch_2cb
        :pswitch_29b
        :pswitch_28b
        :pswitch_2bb
        :pswitch_2ab
    .end packed-switch
.end method

.method private sideToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "side"    # I

    .prologue
    .line 946
    packed-switch p1, :pswitch_data_1c

    .line 962
    const-string v0, "undefined"

    :goto_5
    return-object v0

    .line 948
    :pswitch_6
    const-string v0, "left"

    goto :goto_5

    .line 950
    :pswitch_9
    const-string v0, "right"

    goto :goto_5

    .line 952
    :pswitch_c
    const-string v0, "top"

    goto :goto_5

    .line 954
    :pswitch_f
    const-string v0, "bottom"

    goto :goto_5

    .line 956
    :pswitch_12
    const-string v0, "baseline"

    goto :goto_5

    .line 958
    :pswitch_15
    const-string v0, "start"

    goto :goto_5

    .line 960
    :pswitch_18
    const-string v0, "end"

    goto :goto_5

    .line 946
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public applyTo(Landroid/support/constraint/ConstraintLayout;)V
    .registers 12
    .param p1, "constraintLayout"    # Landroid/support/constraint/ConstraintLayout;

    .prologue
    .line 444
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v1

    .line 445
    .local v1, "count":I
    new-instance v6, Ljava/util/HashSet;

    iget-object v8, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 447
    .local v6, "used":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v1, :cond_4d

    .line 448
    invoke-virtual {p1, v3}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 449
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v4

    .line 450
    .local v4, "id":I
    iget-object v8, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 451
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 452
    iget-object v8, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 453
    .local v0, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 454
    .local v5, "param":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    invoke-virtual {v0, v5}, Landroid/support/constraint/ConstraintSet$Constraint;->applyTo(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 455
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    iget v8, v0, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 447
    .end local v0    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    .end local v5    # "param":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 459
    .end local v4    # "id":I
    .end local v7    # "view":Landroid/view/View;
    :cond_4d
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_51
    :goto_51
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_84

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 460
    .local v4, "id":Ljava/lang/Integer;
    iget-object v9, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 461
    .restart local v0    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    iget-boolean v9, v0, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    if-eqz v9, :cond_51

    .line 462
    new-instance v2, Landroid/support/constraint/Guideline;

    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/support/constraint/Guideline;-><init>(Landroid/content/Context;)V

    .line 463
    .local v2, "g":Landroid/support/constraint/Guideline;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/support/constraint/Guideline;->setId(I)V

    .line 464
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v5

    .line 465
    .restart local v5    # "param":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    invoke-virtual {v0, v5}, Landroid/support/constraint/ConstraintSet$Constraint;->applyTo(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 466
    invoke-virtual {p1, v2, v5}, Landroid/support/constraint/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_51

    .line 469
    .end local v0    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    .end local v2    # "g":Landroid/support/constraint/Guideline;
    .end local v4    # "id":Ljava/lang/Integer;
    .end local v5    # "param":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_84
    return-void
.end method

.method public center(IIIIIIIF)V
    .registers 16
    .param p1, "centerID"    # I
    .param p2, "firstID"    # I
    .param p3, "firstSide"    # I
    .param p4, "firstMargin"    # I
    .param p5, "secondId"    # I
    .param p6, "secondSide"    # I
    .param p7, "secondMargin"    # I
    .param p8, "bias"    # F

    .prologue
    .line 489
    if-gez p4, :cond_a

    .line 490
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "margin must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_a
    if-gez p7, :cond_14

    .line 493
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "margin must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_14
    const/4 v0, 0x0

    cmpg-float v0, p8, v0

    if-lez v0, :cond_1f

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p8, v0

    if-lez v0, :cond_27

    .line 496
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bias must be between 0 and 1 inclusive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_27
    const/4 v0, 0x1

    if-eq p3, v0, :cond_2d

    const/4 v0, 0x2

    if-ne p3, v0, :cond_4e

    .line 500
    :cond_2d
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 501
    const/4 v2, 0x2

    move-object v0, p0

    move v1, p1

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 502
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 503
    .local v6, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    iput p8, v6, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 510
    :goto_4d
    return-void

    .line 505
    .end local v6    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    :cond_4e
    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 506
    const/4 v2, 0x4

    move-object v0, p0

    move v1, p1

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 507
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 508
    .restart local v6    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    iput p8, v6, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    goto :goto_4d
.end method

.method public centerHorizontally(II)V
    .registers 12
    .param p1, "viewId"    # I
    .param p2, "toView"    # I

    .prologue
    const/4 v4, 0x0

    .line 719
    const/4 v3, 0x1

    const/4 v6, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    move v7, v4

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    .line 720
    return-void
.end method

.method public centerVertically(II)V
    .registers 12
    .param p1, "viewId"    # I
    .param p2, "toView"    # I

    .prologue
    const/4 v4, 0x0

    .line 729
    const/4 v3, 0x3

    const/4 v6, 0x4

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    move v7, v4

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    .line 730
    return-void
.end method

.method public clear(I)V
    .registers 4
    .param p1, "viewId"    # I

    .prologue
    .line 738
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    return-void
.end method

.method public clear(II)V
    .registers 8
    .param p1, "viewId"    # I
    .param p2, "anchor"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 748
    iget-object v1, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 749
    iget-object v1, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 750
    .local v0, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    packed-switch p2, :pswitch_data_52

    .line 786
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unknown constraint"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 752
    :pswitch_25
    iput v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 753
    iput v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 754
    iput v4, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    .line 789
    .end local v0    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    :cond_2b
    :goto_2b
    return-void

    .line 757
    .restart local v0    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    :pswitch_2c
    iput v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 758
    iput v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 759
    iput v4, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    goto :goto_2b

    .line 762
    :pswitch_33
    iput v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 763
    iput v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 764
    iput v4, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    goto :goto_2b

    .line 767
    :pswitch_3a
    iput v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 768
    iput v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 769
    iput v4, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    goto :goto_2b

    .line 773
    :pswitch_41
    iput v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_2b

    .line 776
    :pswitch_44
    iput v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 777
    iput v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 778
    iput v4, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    goto :goto_2b

    .line 781
    :pswitch_4b
    iput v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 782
    iput v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 783
    iput v4, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    goto :goto_2b

    .line 750
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_25
        :pswitch_2c
        :pswitch_33
        :pswitch_3a
        :pswitch_41
        :pswitch_44
        :pswitch_4b
    .end packed-switch
.end method

.method public clone(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "constraintLayoutId"    # I

    .prologue
    .line 413
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    .line 414
    return-void
.end method

.method public clone(Landroid/support/constraint/ConstraintLayout;)V
    .registers 12
    .param p1, "constraintLayout"    # Landroid/support/constraint/ConstraintLayout;

    .prologue
    .line 422
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v1

    .line 423
    .local v1, "count":I
    iget-object v6, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 424
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_4d

    .line 425
    invoke-virtual {p1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 426
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 428
    .local v4, "param":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v3

    .line 429
    .local v3, "id":I
    iget-object v6, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 430
    iget-object v6, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :cond_35
    iget-object v6, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 433
    .local v0, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    # invokes: Landroid/support/constraint/ConstraintSet$Constraint;->fillFrom(ILandroid/support/constraint/ConstraintLayout$LayoutParams;)V
    invoke-static {v0, v3, v4}, Landroid/support/constraint/ConstraintSet$Constraint;->access$100(Landroid/support/constraint/ConstraintSet$Constraint;ILandroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 434
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    iput v6, v0, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    .line 424
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 436
    .end local v0    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    .end local v3    # "id":I
    .end local v4    # "param":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v5    # "view":Landroid/view/View;
    :cond_4d
    return-void
.end method

.method public connect(IIIII)V
    .registers 16
    .param p1, "startID"    # I
    .param p2, "startSide"    # I
    .param p3, "endID"    # I
    .param p4, "endSide"    # I
    .param p5, "margin"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 609
    iget-object v1, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 610
    iget-object v1, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    :cond_20
    iget-object v1, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 613
    .local v0, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    packed-switch p2, :pswitch_data_1ce

    .line 708
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 615
    :pswitch_5a
    if-ne p4, v6, :cond_63

    .line 616
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 617
    iput v5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 625
    :goto_60
    iput p5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    .line 710
    :goto_62
    return-void

    .line 618
    :cond_63
    if-ne p4, v7, :cond_6a

    .line 619
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 620
    iput v5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    goto :goto_60

    .line 623
    :cond_6a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Left to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 628
    :pswitch_8d
    if-ne p4, v6, :cond_96

    .line 629
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 630
    iput v5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 639
    :goto_93
    iput p5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    goto :goto_62

    .line 632
    :cond_96
    if-ne p4, v7, :cond_9d

    .line 633
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 634
    iput v5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    goto :goto_93

    .line 637
    :cond_9d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 642
    :pswitch_c0
    if-ne p4, v8, :cond_cb

    .line 643
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 644
    iput v5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 645
    iput v5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 654
    :goto_c8
    iput p5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    goto :goto_62

    .line 646
    :cond_cb
    if-ne p4, v9, :cond_d4

    .line 647
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 648
    iput v5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 649
    iput v5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_c8

    .line 652
    :cond_d4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 657
    :pswitch_f7
    if-ne p4, v9, :cond_103

    .line 658
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 659
    iput v5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 660
    iput v5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 670
    :goto_ff
    iput p5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    goto/16 :goto_62

    .line 662
    :cond_103
    if-ne p4, v8, :cond_10c

    .line 663
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 664
    iput v5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 665
    iput v5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_ff

    .line 668
    :cond_10c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 673
    :pswitch_12f
    const/4 v1, 0x5

    if-ne p4, v1, :cond_13e

    .line 674
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 675
    iput v5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 676
    iput v5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 677
    iput v5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 678
    iput v5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    goto/16 :goto_62

    .line 680
    :cond_13e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 684
    :pswitch_161
    const/4 v1, 0x6

    if-ne p4, v1, :cond_16c

    .line 685
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 686
    iput v5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 693
    :goto_168
    iput p5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    goto/16 :goto_62

    .line 687
    :cond_16c
    const/4 v1, 0x7

    if-ne p4, v1, :cond_174

    .line 688
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 689
    iput v5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    goto :goto_168

    .line 691
    :cond_174
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 696
    :pswitch_197
    const/4 v1, 0x7

    if-ne p4, v1, :cond_1a2

    .line 697
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 698
    iput v5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 705
    :goto_19e
    iput p5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    goto/16 :goto_62

    .line 699
    :cond_1a2
    const/4 v1, 0x6

    if-ne p4, v1, :cond_1aa

    .line 700
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 701
    iput v5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    goto :goto_19e

    .line 703
    :cond_1aa
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "right to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 613
    nop

    :pswitch_data_1ce
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_8d
        :pswitch_c0
        :pswitch_f7
        :pswitch_12f
        :pswitch_161
        :pswitch_197
    .end packed-switch
.end method

.method public constrainHeight(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "height"    # I

    .prologue
    .line 876
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    .line 877
    return-void
.end method

.method public constrainWidth(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "width"    # I

    .prologue
    .line 886
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    .line 887
    return-void
.end method

.method public create(II)V
    .registers 5
    .param p1, "guidelineID"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 896
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    .line 897
    .local v0, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 898
    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    .line 899
    return-void
.end method

.method public createHorizontalChain(II[I[FZ)V
    .registers 14
    .param p1, "leftId"    # I
    .param p2, "rightId"    # I
    .param p3, "chainIds"    # [I
    .param p4, "weights"    # [F
    .param p5, "packed"    # Z

    .prologue
    .line 574
    array-length v0, p3

    const/4 v1, 0x2

    if-ge v0, v1, :cond_c

    .line 575
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_c
    if-eqz p4, :cond_1a

    array-length v0, p4

    array-length v1, p3

    if-eq v0, v1, :cond_1a

    .line 578
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_1a
    if-eqz p4, :cond_28

    .line 581
    const/4 v0, 0x0

    aget v0, p3, v0

    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, p4, v1

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 583
    :cond_28
    const/4 v0, 0x0

    aget v0, p3, v0

    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput-boolean p5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainPacked:Z

    .line 584
    const/4 v0, 0x0

    aget v1, p3, v0

    const/4 v2, 0x3

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 585
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_3d
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_6d

    .line 586
    aget v6, p3, v7

    .line 587
    .local v6, "chainId":I
    aget v1, p3, v7

    const/4 v2, 0x3

    add-int/lit8 v0, v7, -0x1

    aget v3, p3, v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 588
    add-int/lit8 v0, v7, -0x1

    aget v1, p3, v0

    const/4 v2, 0x4

    aget v3, p3, v7

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 589
    if-eqz p4, :cond_6a

    .line 590
    aget v0, p3, v7

    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    aget v1, p4, v7

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 585
    :cond_6a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3d

    .line 593
    .end local v6    # "chainId":I
    :cond_6d
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget v1, p3, v0

    const/4 v2, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 594
    if-eqz p4, :cond_8c

    .line 595
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget v0, p3, v0

    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    aget v1, p4, v1

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 597
    :cond_8c
    return-void
.end method

.method public createVerticalChain(II[I[FZ)V
    .registers 14
    .param p1, "topId"    # I
    .param p2, "bottomId"    # I
    .param p3, "chainIds"    # [I
    .param p4, "weights"    # [F
    .param p5, "packed"    # Z

    .prologue
    .line 537
    array-length v0, p3

    const/4 v1, 0x2

    if-ge v0, v1, :cond_c

    .line 538
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_c
    if-eqz p4, :cond_1a

    array-length v0, p4

    array-length v1, p3

    if-eq v0, v1, :cond_1a

    .line 541
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_1a
    if-eqz p4, :cond_28

    .line 544
    const/4 v0, 0x0

    aget v0, p3, v0

    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, p4, v1

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 546
    :cond_28
    const/4 v0, 0x0

    aget v0, p3, v0

    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput-boolean p5, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainPacked:Z

    .line 548
    const/4 v0, 0x0

    aget v1, p3, v0

    const/4 v2, 0x3

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 549
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_3d
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_6d

    .line 550
    aget v6, p3, v7

    .line 551
    .local v6, "chainId":I
    aget v1, p3, v7

    const/4 v2, 0x3

    add-int/lit8 v0, v7, -0x1

    aget v3, p3, v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 552
    add-int/lit8 v0, v7, -0x1

    aget v1, p3, v0

    const/4 v2, 0x4

    aget v3, p3, v7

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 553
    if-eqz p4, :cond_6a

    .line 554
    aget v0, p3, v7

    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    aget v1, p4, v7

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 549
    :cond_6a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3d

    .line 557
    .end local v6    # "chainId":I
    :cond_6d
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget v1, p3, v0

    const/4 v2, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 558
    if-eqz p4, :cond_8c

    .line 559
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget v0, p3, v0

    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    aget v1, p4, v1

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 561
    :cond_8c
    return-void
.end method

.method public load(Landroid/content/Context;I)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .prologue
    const/4 v9, 0x1

    .line 972
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 973
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 974
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    .line 975
    .local v1, "document":Ljava/lang/String;
    const/4 v6, 0x0

    .line 978
    .local v6, "tagName":Ljava/lang/String;
    :try_start_b
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 979
    .local v3, "eventType":I
    :goto_f
    if-eq v3, v9, :cond_45

    .line 981
    packed-switch v3, :pswitch_data_4e

    .line 980
    :goto_14
    :pswitch_14
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_f

    .line 983
    :pswitch_19
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 984
    goto :goto_14

    .line 986
    :pswitch_1e
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 987
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Landroid/support/constraint/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    .line 988
    .local v0, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    const-string v7, "Guideline"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 989
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 991
    :cond_35
    iget-object v7, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    iget v8, v0, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_40} :catch_41
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_40} :catch_48

    goto :goto_14

    .line 1000
    .end local v0    # "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    .end local v3    # "eventType":I
    :catch_41
    move-exception v2

    .line 1001
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 1005
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_45
    :goto_45
    return-void

    .line 994
    .restart local v3    # "eventType":I
    :pswitch_46
    const/4 v6, 0x0

    .line 995
    goto :goto_14

    .line 1002
    .end local v3    # "eventType":I
    :catch_48
    move-exception v2

    .line 1003
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_45

    .line 981
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_19
        :pswitch_14
        :pswitch_1e
        :pswitch_46
    .end packed-switch
.end method

.method public setDimensionRatio(IIF)V
    .registers 5
    .param p1, "viewId"    # I
    .param p2, "side"    # I
    .param p3, "ratio"    # F

    .prologue
    .line 855
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatio:F

    .line 856
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatioSide:I

    .line 857
    return-void
.end method

.method public setGuidelineBegin(II)V
    .registers 5
    .param p1, "guidelineID"    # I
    .param p2, "margin"    # I

    .prologue
    .line 908
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 909
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 910
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    .line 912
    return-void
.end method

.method public setGuidelineEnd(II)V
    .registers 5
    .param p1, "guidelineID"    # I
    .param p2, "margin"    # I

    .prologue
    .line 921
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 922
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 923
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    .line 924
    return-void
.end method

.method public setGuidelinePercent(IF)V
    .registers 5
    .param p1, "guidelineID"    # I
    .param p2, "ratio"    # F

    .prologue
    const/4 v1, -0x1

    .line 933
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    .line 934
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 935
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 936
    return-void
.end method

.method public setHorizontalBias(IF)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "bias"    # F

    .prologue
    .line 833
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 834
    return-void
.end method

.method public setMargin(III)V
    .registers 7
    .param p1, "viewId"    # I
    .param p2, "anchor"    # I
    .param p3, "value"    # I

    .prologue
    .line 799
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    .line 800
    .local v0, "constraint":Landroid/support/constraint/ConstraintSet$Constraint;
    packed-switch p2, :pswitch_data_2a

    .line 822
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "unknown constraint"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 802
    :pswitch_f
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    .line 824
    :goto_11
    return-void

    .line 805
    :pswitch_12
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    goto :goto_11

    .line 808
    :pswitch_15
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    goto :goto_11

    .line 811
    :pswitch_18
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    goto :goto_11

    .line 814
    :pswitch_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "baseline does not support margins"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 816
    :pswitch_23
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    goto :goto_11

    .line 819
    :pswitch_26
    iput p3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    goto :goto_11

    .line 800
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_23
        :pswitch_26
    .end packed-switch
.end method

.method public setVerticalBias(IF)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "bias"    # F

    .prologue
    .line 843
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    .line 844
    return-void
.end method

.method public setVisibility(II)V
    .registers 4
    .param p1, "viewId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 866
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    .line 867
    return-void
.end method
