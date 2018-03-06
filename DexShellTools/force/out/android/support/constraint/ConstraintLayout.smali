.class public Landroid/support/constraint/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ALLOWS_EMBEDDED:Z = false

.field private static final SIMPLE_LAYOUT:Z = true

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDirtyHierarchy:Z

.field mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field previousHeightMeasureSpec:I

.field previousPaddingLeft:I

.field previousPaddingTop:I

.field previousWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 375
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 363
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 370
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 758
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousPaddingLeft:I

    .line 759
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousPaddingTop:I

    .line 760
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousWidthMeasureSpec:I

    .line 761
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousHeightMeasureSpec:I

    .line 376
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->init()V

    .line 377
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    .line 380
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 363
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 370
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 758
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousPaddingLeft:I

    .line 759
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousPaddingTop:I

    .line 760
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousWidthMeasureSpec:I

    .line 761
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousHeightMeasureSpec:I

    .line 381
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->init()V

    .line 382
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, -0x1

    .line 385
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 363
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 370
    new-instance v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 758
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousPaddingLeft:I

    .line 759
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousPaddingTop:I

    .line 760
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousWidthMeasureSpec:I

    .line 761
    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->previousHeightMeasureSpec:I

    .line 386
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->init()V

    .line 387
    return-void
.end method

.method private final getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 684
    if-nez p1, :cond_5

    .line 685
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 691
    :goto_4
    return-object v1

    .line 687
    :cond_5
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 688
    .local v0, "view":Landroid/view/View;
    if-ne v0, p0, :cond_12

    .line 689
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    goto :goto_4

    .line 691
    :cond_12
    if-nez v0, :cond_16

    const/4 v1, 0x0

    goto :goto_4

    :cond_16
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_4
.end method

.method private final getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 696
    if-ne p1, p0, :cond_5

    .line 697
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 699
    :goto_4
    return-object v0

    :cond_5
    if-nez p1, :cond_9

    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_4
.end method

.method private init()V
    .registers 3

    .prologue
    .line 390
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setCompanionWidget(Ljava/lang/Object;)V

    .line 391
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 392
    return-void
.end method

.method private internalMeasureChildren(II)V
    .registers 18
    .param p1, "parentWidthSpec"    # I
    .param p2, "parentHeightSpec"    # I

    .prologue
    .line 703
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v13

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v14

    add-int v6, v13, v14

    .line 704
    .local v6, "heightPadding":I
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v13

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v14

    add-int v12, v13, v14

    .line 706
    .local v12, "widthPadding":I
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v10

    .line 707
    .local v10, "widgetsCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_19
    if-ge v7, v10, :cond_82

    .line 708
    invoke-virtual {p0, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 709
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_2a

    .line 707
    :cond_27
    :goto_27
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 712
    :cond_2a
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 713
    .local v8, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget-object v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 714
    .local v9, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-boolean v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v13, :cond_27

    .line 718
    iget v11, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 719
    .local v11, "width":I
    iget v5, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 722
    .local v5, "height":I
    iget-boolean v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v13, :cond_42

    iget-boolean v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v13, :cond_5f

    .line 726
    :cond_42
    if-nez v11, :cond_74

    .line 727
    const/4 v13, -0x2

    move/from16 v0, p1

    invoke-static {v0, v12, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v4

    .line 733
    .local v4, "childWidthMeasureSpec":I
    :goto_4b
    if-nez v5, :cond_7b

    .line 734
    const/4 v13, -0x2

    move/from16 v0, p2

    invoke-static {v0, v6, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    .line 740
    .local v3, "childHeightMeasureSpec":I
    :goto_54
    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    .line 742
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 743
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 746
    .end local v3    # "childHeightMeasureSpec":I
    .end local v4    # "childWidthMeasureSpec":I
    :cond_5f
    invoke-virtual {v9, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 747
    invoke-virtual {v9, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 749
    iget-boolean v13, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v13, :cond_27

    .line 750
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 751
    .local v1, "baseline":I
    const/4 v13, -0x1

    if-eq v1, v13, :cond_27

    .line 752
    invoke-virtual {v9, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    goto :goto_27

    .line 730
    .end local v1    # "baseline":I
    :cond_74
    move/from16 v0, p1

    invoke-static {v0, v12, v11}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v4

    .restart local v4    # "childWidthMeasureSpec":I
    goto :goto_4b

    .line 737
    :cond_7b
    move/from16 v0, p2

    invoke-static {v0, v6, v5}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    .restart local v3    # "childHeightMeasureSpec":I
    goto :goto_54

    .line 756
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childHeightMeasureSpec":I
    .end local v4    # "childWidthMeasureSpec":I
    .end local v5    # "height":I
    .end local v8    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v9    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "width":I
    :cond_82
    return-void
.end method

.method private setChildrenConstraints()V
    .registers 34

    .prologue
    .line 473
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v22

    .line 474
    .local v22, "count":I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_6
    move/from16 v0, v24

    move/from16 v1, v22

    if-ge v0, v1, :cond_3d0

    .line 475
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 476
    .local v21, "child":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 477
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v2, :cond_21

    .line 474
    :cond_1e
    :goto_1e
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 481
    :cond_21
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 483
    .local v25, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->reset()V

    .line 484
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 485
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 486
    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 488
    move-object/from16 v0, v25

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v3, :cond_49

    move-object/from16 v0, v25

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v3, :cond_50

    .line 489
    :cond_49
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_50
    move-object/from16 v0, v25

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-eqz v3, :cond_8e

    move-object/from16 v23, v2

    .line 493
    check-cast v23, Landroid/support/constraint/solver/widgets/Guideline;

    .line 494
    .local v23, "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_6a

    .line 495
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    .line 497
    :cond_6a
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_7a

    .line 498
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    .line 500
    :cond_7a
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1e

    .line 501
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    goto :goto_1e

    .line 503
    .end local v23    # "guideline":Landroid/support/constraint/solver/widgets/Guideline;
    :cond_8e
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_db

    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_db

    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_db

    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_db

    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_db

    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_db

    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_db

    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_db

    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_db

    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_db

    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1e

    .line 516
    :cond_db
    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    move/from16 v27, v0

    .line 517
    .local v27, "resolvedLeftToLeft":I
    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    move/from16 v28, v0

    .line 518
    .local v28, "resolvedLeftToRight":I
    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    move/from16 v29, v0

    .line 519
    .local v29, "resolvedRightToLeft":I
    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    move/from16 v30, v0

    .line 520
    .local v30, "resolvedRightToRight":I
    move-object/from16 v0, v25

    iget v7, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 521
    .local v7, "resolveGoneLeftMargin":I
    move-object/from16 v0, v25

    iget v13, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 522
    .local v13, "resolveGoneRightMargin":I
    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    move/from16 v26, v0

    .line 524
    .local v26, "resolvedHorizontalBias":F
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v3, v5, :cond_15b

    .line 527
    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    move/from16 v27, v0

    .line 528
    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    move/from16 v28, v0

    .line 529
    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    move/from16 v29, v0

    .line 530
    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    move/from16 v30, v0

    .line 531
    move-object/from16 v0, v25

    iget v7, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 532
    move-object/from16 v0, v25

    iget v13, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 533
    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    move/from16 v26, v0

    .line 535
    const/4 v3, -0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_144

    const/4 v3, -0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_144

    .line 536
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_306

    .line 537
    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    move/from16 v27, v0

    .line 542
    :cond_144
    :goto_144
    const/4 v3, -0x1

    move/from16 v0, v29

    if-ne v0, v3, :cond_15b

    const/4 v3, -0x1

    move/from16 v0, v30

    if-ne v0, v3, :cond_15b

    .line 543
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_315

    .line 544
    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    move/from16 v29, v0

    .line 552
    :cond_15b
    :goto_15b
    const/4 v3, -0x1

    move/from16 v0, v27

    if-eq v0, v3, :cond_324

    .line 553
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 554
    .local v4, "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_175

    .line 555
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v25

    iget v6, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 569
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_175
    :goto_175
    const/4 v3, -0x1

    move/from16 v0, v29

    if-eq v0, v3, :cond_340

    .line 570
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 571
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_191

    .line 572
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v25

    iget v12, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v8, v2

    move-object v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 586
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_191
    :goto_191
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_35e

    .line 587
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 588
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_1ba

    .line 589
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v17, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move/from16 v19, v0

    move-object v14, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 603
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1ba
    :goto_1ba
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_389

    .line 604
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 605
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_1e3

    .line 606
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v17, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move/from16 v19, v0

    move-object v14, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 620
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1e3
    :goto_1e3
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_249

    .line 621
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    move-object/from16 v0, v25

    iget v5, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/View;

    .line 622
    .local v32, "view":Landroid/view/View;
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 623
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_249

    if-eqz v32, :cond_249

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v3, :cond_249

    .line 624
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 625
    .local v31, "targetParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    const/4 v3, 0x1

    move-object/from16 v0, v25

    iput-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 626
    const/4 v3, 0x1

    move-object/from16 v0, v31

    iput-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 627
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v14

    .line 628
    .local v14, "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 629
    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v15

    .line 630
    .local v15, "targetBaseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    const/16 v16, 0x0

    const/16 v17, -0x1

    sget-object v18, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v14 .. v20}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    .line 633
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 634
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 638
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v14    # "baseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v15    # "targetBaseline":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v31    # "targetParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v32    # "view":Landroid/view/View;
    :cond_249
    const/4 v3, 0x0

    cmpl-float v3, v26, v3

    if-ltz v3, :cond_259

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v3, v26, v3

    if-eqz v3, :cond_259

    .line 639
    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 641
    :cond_259
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_273

    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_273

    .line 642
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 646
    :cond_273
    move-object/from16 v0, v25

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v3, :cond_3b4

    .line 647
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 648
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 649
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_294

    .line 650
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 656
    :cond_294
    :goto_294
    move-object/from16 v0, v25

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v3, :cond_3c2

    .line 657
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 658
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 659
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2b5

    .line 660
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 667
    :cond_2b5
    :goto_2b5
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_2d4

    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2c9

    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2d4

    .line 669
    :cond_2c9
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    move-object/from16 v0, v25

    iget v5, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {v2, v3, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOrigin(II)V

    .line 672
    :cond_2d4
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2e8

    .line 673
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:F

    move-object/from16 v0, v25

    iget v5, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    invoke-virtual {v2, v3, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDimensionRatio(FI)V

    .line 675
    :cond_2e8
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalWeight(F)V

    .line 676
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalWeight(F)V

    .line 677
    move-object/from16 v0, v25

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainPacked:Z

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalChainPacked(Z)V

    .line 678
    move-object/from16 v0, v25

    iget-boolean v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainPacked:Z

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalChainPacked(Z)V

    goto/16 :goto_1e

    .line 538
    :cond_306
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_144

    .line 539
    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    move/from16 v28, v0

    goto/16 :goto_144

    .line 545
    :cond_315
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_15b

    .line 546
    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    move/from16 v30, v0

    goto/16 :goto_15b

    .line 559
    :cond_324
    const/4 v3, -0x1

    move/from16 v0, v28

    if-eq v0, v3, :cond_175

    .line 560
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 561
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_175

    .line 562
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v25

    iget v6, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_175

    .line 576
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_340
    const/4 v3, -0x1

    move/from16 v0, v30

    if-eq v0, v3, :cond_191

    .line 577
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 578
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_191

    .line 579
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v25

    iget v12, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v8, v2

    move-object v10, v4

    invoke-virtual/range {v8 .. v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_191

    .line 593
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_35e
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1ba

    .line 594
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 595
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_1ba

    .line 596
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v17, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move/from16 v19, v0

    move-object v14, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_1ba

    .line 610
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_389
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1e3

    .line 611
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v4

    .line 612
    .restart local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v4, :cond_1e3

    .line 613
    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v17, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move/from16 v19, v0

    move-object v14, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v14 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto/16 :goto_1e3

    .line 653
    .end local v4    # "target":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_3b4
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 654
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto/16 :goto_294

    .line 663
    :cond_3c2
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 664
    move-object/from16 v0, v25

    iget v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto/16 :goto_2b5

    .line 681
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "resolveGoneLeftMargin":I
    .end local v13    # "resolveGoneRightMargin":I
    .end local v21    # "child":Landroid/view/View;
    .end local v25    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v26    # "resolvedHorizontalBias":F
    .end local v27    # "resolvedLeftToLeft":I
    .end local v28    # "resolvedLeftToRight":I
    .end local v29    # "resolvedRightToLeft":I
    .end local v30    # "resolvedRightToRight":I
    :cond_3d0
    return-void
.end method

.method private setSelfDimensionBehaviour(II)V
    .registers 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 872
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 873
    .local v8, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 874
    .local v10, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 875
    .local v3, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 877
    .local v5, "heightSize":I
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v11

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v12

    add-int v4, v11, v12

    .line 878
    .local v4, "heightPadding":I
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v11

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v12

    add-int v9, v11, v12

    .line 880
    .local v9, "widthPadding":I
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 881
    .local v7, "widthBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 882
    .local v2, "heightBehaviour":Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v1, 0x0

    .line 883
    .local v1, "desiredWidth":I
    const/4 v0, 0x0

    .line 886
    .local v0, "desiredHeight":I
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 887
    .local v6, "params":Landroid/view/ViewGroup$LayoutParams;
    sparse-switch v8, :sswitch_data_6a

    .line 904
    :goto_31
    sparse-switch v3, :sswitch_data_78

    .line 922
    :goto_34
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 923
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 924
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 925
    iget-object v11, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 926
    return-void

    .line 889
    :sswitch_49
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 891
    goto :goto_31

    .line 893
    :sswitch_4c
    iget v11, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v11, :cond_53

    .line 894
    iget v1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_31

    .line 896
    :cond_53
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 899
    goto :goto_31

    .line 901
    :sswitch_56
    sub-int v1, v10, v9

    goto :goto_31

    .line 906
    :sswitch_59
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 908
    goto :goto_34

    .line 910
    :sswitch_5c
    iget v11, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v11, :cond_63

    .line 911
    iget v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_34

    .line 913
    :cond_63
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 916
    goto :goto_34

    .line 918
    :sswitch_66
    sub-int v0, v5, v4

    goto :goto_34

    .line 887
    nop

    :sswitch_data_6a
    .sparse-switch
        -0x80000000 -> :sswitch_49
        0x0 -> :sswitch_4c
        0x40000000 -> :sswitch_56
    .end sparse-switch

    .line 904
    :sswitch_data_78
    .sparse-switch
        -0x80000000 -> :sswitch_59
        0x0 -> :sswitch_5c
        0x40000000 -> :sswitch_66
    .end sparse-switch
.end method

.method private solveLinearSystem()V
    .registers 2

    .prologue
    .line 932
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/support/constraint/solver/widgets/Animator;->setAnimationEnabled(Z)V

    .line 934
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->layout()V

    .line 939
    return-void
.end method

.method private updateHierarchy()V
    .registers 6

    .prologue
    .line 456
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v1

    .line 458
    .local v1, "count":I
    const/4 v3, 0x0

    .line 459
    .local v3, "recompute":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_13

    .line 460
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 461
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 462
    const/4 v3, 0x1

    .line 466
    .end local v0    # "child":Landroid/view/View;
    :cond_13
    if-eqz v3, :cond_1d

    .line 467
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 468
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->setChildrenConstraints()V

    .line 470
    :cond_1d
    return-void

    .line 459
    .restart local v0    # "child":Landroid/view/View;
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 399
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 400
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_c

    .line 401
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 403
    :cond_c
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1010
    instance-of v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 994
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 353
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 986
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1002
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 17
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 946
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v8

    .line 947
    .local v8, "widgetsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v8, :cond_3a

    .line 948
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 949
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 950
    .local v4, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_20

    iget-boolean v9, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v9, :cond_20

    .line 947
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 954
    :cond_20
    iget-object v7, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 956
    .local v7, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v3

    .line 957
    .local v3, "l":I
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v6

    .line 958
    .local v6, "t":I
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    add-int v5, v3, v9

    .line 959
    .local v5, "r":I
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    add-int v0, v6, v9

    .line 977
    .local v0, "b":I
    invoke-virtual {v1, v3, v6, v5, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_1d

    .line 979
    .end local v0    # "b":I
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "l":I
    .end local v4    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v5    # "r":I
    .end local v6    # "t":I
    .end local v7    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_3a
    return-void
.end method

.method protected onMeasure(II)V
    .registers 27
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 768
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    move/from16 v22, v0

    if-eqz v22, :cond_13

    .line 769
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 770
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->updateHierarchy()V

    .line 773
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v13

    .line 774
    .local v13, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v14

    .line 776
    .local v14, "paddingTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->previousPaddingLeft:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->previousPaddingTop:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->previousHeightMeasureSpec:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->previousWidthMeasureSpec:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->previousPaddingLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v13, :cond_7f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->previousPaddingTop:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v14, :cond_7f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->previousWidthMeasureSpec:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_7f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/ConstraintLayout;->previousHeightMeasureSpec:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-eq v0, v1, :cond_98

    .line 784
    :cond_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 786
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->setSelfDimensionBehaviour(II)V

    .line 788
    :cond_98
    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/constraint/ConstraintLayout;->previousPaddingLeft:I

    .line 789
    move-object/from16 v0, p0

    iput v14, v0, Landroid/support/constraint/ConstraintLayout;->previousPaddingTop:I

    .line 790
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout;->previousWidthMeasureSpec:I

    .line 791
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/constraint/ConstraintLayout;->previousHeightMeasureSpec:I

    .line 793
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->internalMeasureChildren(II)V

    .line 802
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem()V

    .line 803
    const/4 v6, 0x0

    .line 806
    .local v6, "childState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 808
    .local v18, "sizeDependentWidgetsCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v22

    add-int v7, v14, v22

    .line 809
    .local v7, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v22

    add-int v20, v13, v22

    .line 811
    .local v20, "widthPadding":I
    if-lez v18, :cond_189

    .line 812
    const/4 v12, 0x0

    .line 813
    .local v12, "needSolverPass":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_cd
    move/from16 v0, v18

    if-ge v9, v0, :cond_184

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 815
    .local v19, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/support/constraint/solver/widgets/Guideline;

    move/from16 v22, v0

    if-eqz v22, :cond_ea

    .line 813
    :cond_e7
    :goto_e7
    add-int/lit8 v9, v9, 0x1

    goto :goto_cd

    .line 818
    :cond_ea
    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 819
    .local v5, "child":Landroid/view/View;
    if-eqz v5, :cond_e7

    .line 822
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_e7

    .line 826
    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v22

    const/high16 v23, 0x40000000    # 2.0f

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 827
    .local v21, "widthSpec":I
    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v22

    const/high16 v23, 0x40000000    # 2.0f

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 829
    .local v8, "heightSpec":I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 830
    .local v15, "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    iget v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    move/from16 v22, v0

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_15e

    .line 831
    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 837
    :cond_12e
    :goto_12e
    move/from16 v0, v21

    invoke-virtual {v5, v0, v8}, Landroid/view/View;->measure(II)V

    .line 839
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 840
    .local v11, "measuredWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 841
    .local v10, "measureHeight":I
    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v22

    move/from16 v0, v22

    if-eq v11, v0, :cond_175

    .line 842
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 843
    const/4 v12, 0x1

    .line 849
    :cond_149
    :goto_149
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_e7

    .line 850
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v22

    move/from16 v0, v22

    invoke-static {v6, v0}, Landroid/support/constraint/ConstraintLayout;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_e7

    .line 832
    .end local v10    # "measureHeight":I
    .end local v11    # "measuredWidth":I
    :cond_15e
    iget v0, v15, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    move/from16 v22, v0

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12e

    .line 833
    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_12e

    .line 844
    .restart local v10    # "measureHeight":I
    .restart local v11    # "measuredWidth":I
    :cond_175
    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v22

    move/from16 v0, v22

    if-eq v10, v0, :cond_149

    .line 845
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 846
    const/4 v12, 0x1

    goto :goto_149

    .line 853
    .end local v5    # "child":Landroid/view/View;
    .end local v8    # "heightSpec":I
    .end local v10    # "measureHeight":I
    .end local v11    # "measuredWidth":I
    .end local v15    # "params":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .end local v19    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v21    # "widthSpec":I
    :cond_184
    if-eqz v12, :cond_189

    .line 854
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem()V

    .line 858
    .end local v9    # "i":I
    .end local v12    # "needSolverPass":Z
    :cond_189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v22

    add-int v4, v22, v20

    .line 859
    .local v4, "androidLayoutWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v22

    add-int v3, v22, v7

    .line 861
    .local v3, "androidLayoutHeight":I
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_1cf

    .line 862
    move/from16 v0, p1

    invoke-static {v4, v0, v6}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v17

    .line 863
    .local v17, "resolvedWidthSize":I
    shl-int/lit8 v22, v6, 0x10

    move/from16 v0, p2

    move/from16 v1, v22

    invoke-static {v3, v0, v1}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v16

    .line 865
    .local v16, "resolvedHeightSize":I
    const v22, 0xffffff

    and-int v22, v22, v17

    const v23, 0xffffff

    and-int v23, v23, v16

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    .line 869
    .end local v16    # "resolvedHeightSize":I
    .end local v17    # "resolvedWidthSize":I
    :goto_1ce
    return-void

    .line 867
    :cond_1cf
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    goto :goto_1ce
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 421
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_a

    .line 422
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 424
    :cond_a
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 425
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    instance-of v3, p1, Landroid/support/constraint/Guideline;

    if-eqz v3, :cond_30

    .line 426
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v3, :cond_30

    .line 427
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 428
    .local v1, "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    new-instance v3, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v3}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 429
    iput-boolean v5, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 430
    iget-object v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v3, Landroid/support/constraint/solver/widgets/Guideline;

    iget v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    .line 431
    iget-object v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 434
    .end local v1    # "layoutParams":Landroid/support/constraint/ConstraintLayout$LayoutParams;
    :cond_30
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 435
    .local v0, "container":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    invoke-virtual {v2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 436
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 437
    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 438
    invoke-virtual {v2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setParent(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 439
    iput-boolean v5, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 440
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 447
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_9

    .line 448
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 450
    :cond_9
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 451
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->remove(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 453
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 410
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_c

    .line 412
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 414
    :cond_c
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 1567
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1568
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 1569
    return-void
.end method
