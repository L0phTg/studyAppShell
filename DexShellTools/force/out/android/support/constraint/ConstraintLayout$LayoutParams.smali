.class public Landroid/support/constraint/ConstraintLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final BASELINE:I = 0x5

.field public static final BOTTOM:I = 0x4

.field public static final END:I = 0x7

.field public static final HORIZONTAL:I = 0x0

.field public static final LEFT:I = 0x1

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final START:I = 0x6

.field public static final TOP:I = 0x3

.field public static final UNSET:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field public baselineToBaseline:I

.field public bottomToBottom:I

.field public bottomToTop:I

.field public dimensionRatio:F

.field public dimensionRatioSide:I

.field public editorAbsoluteX:I

.field public editorAbsoluteY:I

.field public endToEnd:I

.field public endToStart:I

.field public goneBottomMargin:I

.field public goneEndMargin:I

.field public goneLeftMargin:I

.field public goneRightMargin:I

.field public goneStartMargin:I

.field public goneTopMargin:I

.field public guideBegin:I

.field public guideEnd:I

.field public guidePercent:F

.field public horizontalBias:F

.field public horizontalChainPacked:Z

.field horizontalDimensionFixed:Z

.field public horizontalWeight:F

.field isGuideline:Z

.field public leftToLeft:I

.field public leftToRight:I

.field needsBaseline:Z

.field public orientation:I

.field resolveGoneLeftMargin:I

.field resolveGoneRightMargin:I

.field resolvedHorizontalBias:F

.field resolvedLeftToLeft:I

.field resolvedLeftToRight:I

.field resolvedRightToLeft:I

.field resolvedRightToRight:I

.field public rightToLeft:I

.field public rightToRight:I

.field public startToEnd:I

.field public startToStart:I

.field public topToBottom:I

.field public topToTop:I

.field public verticalBias:F

.field public verticalChainPacked:Z

.field verticalDimensionFixed:Z

.field public verticalWeight:F

.field widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;


# direct methods
.method public constructor <init>(II)V
    .registers 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1464
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1083
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1088
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1093
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1098
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1103
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1108
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1113
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1118
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1123
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1128
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1133
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1138
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1143
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1148
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1153
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1158
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1163
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1168
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1173
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1178
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1183
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1188
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 1193
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1198
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 1203
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:F

    .line 1208
    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1214
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1220
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1228
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainPacked:Z

    .line 1236
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainPacked:Z

    .line 1242
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1248
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1250
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1253
    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1254
    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1256
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1257
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1259
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1260
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1261
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1262
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1263
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1264
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1265
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1267
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1465
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 23
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1270
    invoke-direct/range {p0 .. p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1083
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1088
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1093
    const/high16 v17, -0x40800000    # -1.0f

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1098
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1103
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1108
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1113
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1118
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1123
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1128
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1133
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1138
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1143
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1148
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1153
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1158
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1163
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1168
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1173
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1178
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1183
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1188
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 1193
    const/high16 v17, 0x3f000000    # 0.5f

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1198
    const/high16 v17, 0x3f000000    # 0.5f

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 1203
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:F

    .line 1208
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1214
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1220
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1228
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainPacked:Z

    .line 1236
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainPacked:Z

    .line 1242
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1248
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1250
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1253
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1254
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1256
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1257
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1259
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1260
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1261
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1262
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1263
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1264
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1265
    const/high16 v17, 0x3f000000    # 0.5f

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1267
    new-instance v17, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct/range {v17 .. v17}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1272
    sget-object v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1273
    .local v4, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 1274
    .local v3, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_17f
    if-ge v11, v3, :cond_725

    .line 1275
    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 1276
    .local v5, "attr":I
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintLeft_toLeftOf:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_1bc

    .line 1277
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1278
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b9

    .line 1279
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1274
    :cond_1b9
    :goto_1b9
    add-int/lit8 v11, v11, 0x1

    goto :goto_17f

    .line 1281
    :cond_1bc
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintLeft_toRightOf:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_1f1

    .line 1282
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1283
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b9

    .line 1284
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    goto :goto_1b9

    .line 1286
    :cond_1f1
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintRight_toLeftOf:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_226

    .line 1287
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1288
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b9

    .line 1289
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    goto :goto_1b9

    .line 1291
    :cond_226
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintRight_toRightOf:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_25c

    .line 1292
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1293
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b9

    .line 1294
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    goto/16 :goto_1b9

    .line 1296
    :cond_25c
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintTop_toTopOf:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_292

    .line 1297
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1298
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b9

    .line 1299
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    goto/16 :goto_1b9

    .line 1301
    :cond_292
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintTop_toBottomOf:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_2c8

    .line 1302
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1303
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b9

    .line 1304
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    goto/16 :goto_1b9

    .line 1306
    :cond_2c8
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBottom_toTopOf:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_2fe

    .line 1307
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1308
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b9

    .line 1309
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    goto/16 :goto_1b9

    .line 1311
    :cond_2fe
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBottom_toBottomOf:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_334

    .line 1312
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1313
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b9

    .line 1314
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    goto/16 :goto_1b9

    .line 1316
    :cond_334
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_36a

    .line 1317
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1318
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b9

    .line 1319
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    goto/16 :goto_1b9

    .line 1321
    :cond_36a
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_editor_absoluteX:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_384

    .line 1322
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    goto/16 :goto_1b9

    .line 1323
    :cond_384
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_editor_absoluteY:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_39e

    .line 1324
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    goto/16 :goto_1b9

    .line 1325
    :cond_39e
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintGuide_begin:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_3b8

    .line 1326
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    goto/16 :goto_1b9

    .line 1327
    :cond_3b8
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintGuide_end:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_3d2

    .line 1328
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    goto/16 :goto_1b9

    .line 1329
    :cond_3d2
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintGuide_percent:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_3ec

    .line 1330
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    goto/16 :goto_1b9

    .line 1331
    :cond_3ec
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_orientation:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_406

    .line 1332
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    goto/16 :goto_1b9

    .line 1333
    :cond_406
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintStart_toEndOf:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_43c

    .line 1334
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1335
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b9

    .line 1336
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    goto/16 :goto_1b9

    .line 1338
    :cond_43c
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintStart_toStartOf:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_472

    .line 1339
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1340
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b9

    .line 1341
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    goto/16 :goto_1b9

    .line 1343
    :cond_472
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintEnd_toStartOf:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_4a8

    .line 1344
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1345
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b9

    .line 1346
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    goto/16 :goto_1b9

    .line 1348
    :cond_4a8
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintEnd_toEndOf:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_4de

    .line 1349
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1350
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b9

    .line 1351
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    goto/16 :goto_1b9

    .line 1353
    :cond_4de
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginLeft:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_4f8

    .line 1354
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    goto/16 :goto_1b9

    .line 1355
    :cond_4f8
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginTop:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_512

    .line 1356
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    goto/16 :goto_1b9

    .line 1357
    :cond_512
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginRight:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_52c

    .line 1358
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    goto/16 :goto_1b9

    .line 1359
    :cond_52c
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginBottom:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_546

    .line 1360
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    goto/16 :goto_1b9

    .line 1361
    :cond_546
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginStart:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_560

    .line 1362
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    goto/16 :goto_1b9

    .line 1363
    :cond_560
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_goneMarginEnd:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_57a

    .line 1364
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    goto/16 :goto_1b9

    .line 1365
    :cond_57a
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHorizontal_bias:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_594

    .line 1366
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    goto/16 :goto_1b9

    .line 1367
    :cond_594
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintVertical_bias:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_5ae

    .line 1368
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    goto/16 :goto_1b9

    .line 1369
    :cond_5ae
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintDimensionRatio:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_691

    .line 1370
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1371
    .local v16, "ratio":Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:F

    .line 1372
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1373
    if-eqz v16, :cond_1b9

    .line 1374
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v12

    .line 1375
    .local v12, "len":I
    const/16 v17, 0x2c

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 1376
    .local v7, "commaIndex":I
    if-lez v7, :cond_666

    add-int/lit8 v17, v12, -0x1

    move/from16 v0, v17

    if-ge v7, v0, :cond_666

    .line 1377
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1378
    .local v10, "dimension":Ljava/lang/String;
    const-string v17, "W"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_653

    .line 1379
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1383
    :cond_5f8
    :goto_5f8
    add-int/lit8 v7, v7, 0x1

    .line 1387
    .end local v10    # "dimension":Ljava/lang/String;
    :goto_5fa
    const/16 v17, 0x3a

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1388
    .local v6, "colonIndex":I
    if-ltz v6, :cond_676

    add-int/lit8 v17, v12, -0x1

    move/from16 v0, v17

    if-ge v6, v0, :cond_676

    .line 1389
    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1390
    .local v13, "nominator":Ljava/lang/String;
    add-int/lit8 v17, v6, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1391
    .local v8, "denominator":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1b9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1b9

    .line 1393
    :try_start_620
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    .line 1394
    .local v14, "nominatorValue":F
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 1395
    .local v9, "denominatorValue":F
    const/16 v17, 0x0

    cmpl-float v17, v14, v17

    if-lez v17, :cond_1b9

    const/16 v17, 0x0

    cmpl-float v17, v9, v17

    if-lez v17, :cond_1b9

    .line 1396
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_668

    .line 1397
    div-float v17, v9, v14

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:F
    :try_end_64e
    .catch Ljava/lang/NumberFormatException; {:try_start_620 .. :try_end_64e} :catch_650

    goto/16 :goto_1b9

    .line 1402
    .end local v9    # "denominatorValue":F
    .end local v14    # "nominatorValue":F
    :catch_650
    move-exception v17

    goto/16 :goto_1b9

    .line 1380
    .end local v6    # "colonIndex":I
    .end local v8    # "denominator":Ljava/lang/String;
    .end local v13    # "nominator":Ljava/lang/String;
    .restart local v10    # "dimension":Ljava/lang/String;
    :cond_653
    const-string v17, "H"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5f8

    .line 1381
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    goto :goto_5f8

    .line 1385
    .end local v10    # "dimension":Ljava/lang/String;
    :cond_666
    const/4 v7, 0x0

    goto :goto_5fa

    .line 1399
    .restart local v6    # "colonIndex":I
    .restart local v8    # "denominator":Ljava/lang/String;
    .restart local v9    # "denominatorValue":F
    .restart local v13    # "nominator":Ljava/lang/String;
    .restart local v14    # "nominatorValue":F
    :cond_668
    div-float v17, v14, v9

    :try_start_66a
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:F
    :try_end_674
    .catch Ljava/lang/NumberFormatException; {:try_start_66a .. :try_end_674} :catch_650

    goto/16 :goto_1b9

    .line 1407
    .end local v8    # "denominator":Ljava/lang/String;
    .end local v9    # "denominatorValue":F
    .end local v13    # "nominator":Ljava/lang/String;
    .end local v14    # "nominatorValue":F
    :cond_676
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 1408
    .local v15, "r":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1b9

    .line 1410
    :try_start_682
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:F
    :try_end_68c
    .catch Ljava/lang/NumberFormatException; {:try_start_682 .. :try_end_68c} :catch_68e

    goto/16 :goto_1b9

    .line 1411
    :catch_68e
    move-exception v17

    goto/16 :goto_1b9

    .line 1417
    .end local v6    # "colonIndex":I
    .end local v7    # "commaIndex":I
    .end local v12    # "len":I
    .end local v15    # "r":Ljava/lang/String;
    .end local v16    # "ratio":Ljava/lang/String;
    :cond_691
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHorizontal_weight:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_6a7

    .line 1418
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    goto/16 :goto_1b9

    .line 1419
    :cond_6a7
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintVertical_weight:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_6bd

    .line 1420
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    goto/16 :goto_1b9

    .line 1421
    :cond_6bd
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintHorizontal_chainPacked:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_6d3

    .line 1422
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainPacked:Z

    goto/16 :goto_1b9

    .line 1423
    :cond_6d3
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintVertical_chainPacked:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_6e9

    .line 1424
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainPacked:Z

    goto/16 :goto_1b9

    .line 1425
    :cond_6e9
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintLeft_creator:I

    move/from16 v0, v17

    if-eq v5, v0, :cond_1b9

    .line 1427
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintTop_creator:I

    move/from16 v0, v17

    if-eq v5, v0, :cond_1b9

    .line 1429
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintRight_creator:I

    move/from16 v0, v17

    if-eq v5, v0, :cond_1b9

    .line 1431
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBottom_creator:I

    move/from16 v0, v17

    if-eq v5, v0, :cond_1b9

    .line 1433
    sget v17, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_constraintBaseline_creator:I

    move/from16 v0, v17

    if-eq v5, v0, :cond_1b9

    .line 1436
    const-string v17, "ConstraintLayout"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown attribute 0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b9

    .line 1439
    .end local v5    # "attr":I
    :cond_725
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->validate()V

    .line 1440
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 8
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1468
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1083
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1088
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1093
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1098
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1103
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1108
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1113
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1118
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1123
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 1128
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 1133
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1138
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 1143
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 1148
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1153
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1158
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1163
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1168
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 1173
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1178
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 1183
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 1188
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 1193
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1198
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 1203
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:F

    .line 1208
    iput v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 1214
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 1220
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 1228
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainPacked:Z

    .line 1236
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainPacked:Z

    .line 1242
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 1248
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 1250
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    .line 1253
    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1254
    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1256
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1257
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1259
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1260
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1261
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1262
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1263
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1264
    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1265
    iput v4, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1267
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1469
    return-void
.end method


# virtual methods
.method public resolveLayoutDirection(I)V
    .registers 6
    .param p1, "layoutDirection"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 1490
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 1492
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1493
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1494
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1495
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1497
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1498
    iput v3, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1499
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1500
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1501
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1503
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->getLayoutDirection()I

    move-result v1

    if-ne v0, v1, :cond_75

    .line 1505
    .local v0, "isRtl":Z
    :goto_23
    if-eqz v0, :cond_80

    .line 1506
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v1, v3, :cond_77

    .line 1507
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1511
    :cond_2d
    :goto_2d
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v1, v3, :cond_35

    .line 1512
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1514
    :cond_35
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v1, v3, :cond_3d

    .line 1515
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1517
    :cond_3d
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    if-eq v1, v3, :cond_45

    .line 1518
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1520
    :cond_45
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    if-eq v1, v3, :cond_4d

    .line 1521
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1523
    :cond_4d
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    sub-float/2addr v1, v2

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1545
    :cond_54
    :goto_54
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v1, v3, :cond_64

    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-ne v1, v3, :cond_64

    .line 1546
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-eq v1, v3, :cond_b1

    .line 1547
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1552
    :cond_64
    :goto_64
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-ne v1, v3, :cond_74

    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-ne v1, v3, :cond_74

    .line 1553
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-eq v1, v3, :cond_ba

    .line 1554
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1559
    :cond_74
    :goto_74
    return-void

    .line 1503
    .end local v0    # "isRtl":Z
    :cond_75
    const/4 v0, 0x0

    goto :goto_23

    .line 1508
    .restart local v0    # "isRtl":Z
    :cond_77
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v1, v3, :cond_2d

    .line 1509
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    goto :goto_2d

    .line 1525
    :cond_80
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v1, v3, :cond_88

    .line 1526
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1528
    :cond_88
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v1, v3, :cond_90

    .line 1529
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1531
    :cond_90
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v1, v3, :cond_98

    .line 1532
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1534
    :cond_98
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v1, v3, :cond_a0

    .line 1535
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1537
    :cond_a0
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    if-eq v1, v3, :cond_a8

    .line 1538
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1540
    :cond_a8
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    if-eq v1, v3, :cond_54

    .line 1541
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    goto :goto_54

    .line 1548
    :cond_b1
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    if-eq v1, v3, :cond_64

    .line 1549
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    goto :goto_64

    .line 1555
    :cond_ba
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    if-eq v1, v3, :cond_74

    .line 1556
    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    goto :goto_74
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .registers 5
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    .prologue
    .line 1477
    :try_start_0
    const-string v0, "layout_width"

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 1478
    const-string v0, "layout_height"

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_10} :catch_11

    .line 1482
    :goto_10
    return-void

    .line 1479
    :catch_11
    move-exception v0

    goto :goto_10
.end method

.method public validate()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 1443
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1444
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1445
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1446
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-eqz v0, :cond_11

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-ne v0, v3, :cond_13

    .line 1447
    :cond_11
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1449
    :cond_13
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-eqz v0, :cond_1b

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v0, v3, :cond_1d

    .line 1450
    :cond_1b
    iput-boolean v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1452
    :cond_1d
    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2d

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    if-ne v0, v3, :cond_2d

    iget v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    if-eq v0, v3, :cond_49

    .line 1453
    :cond_2d
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 1454
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 1455
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 1456
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v0, :cond_40

    .line 1457
    new-instance v0, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1459
    :cond_40
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v0, Landroid/support/constraint/solver/widgets/Guideline;

    iget v1, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    .line 1461
    :cond_49
    return-void
.end method
