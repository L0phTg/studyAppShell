.class Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityChooserViewAdapter"
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_ACTIVITY:I = 0x0

.field private static final ITEM_VIEW_TYPE_COUNT:I = 0x3

.field private static final ITEM_VIEW_TYPE_FOOTER:I = 0x1

.field public static final MAX_ACTIVITY_COUNT_DEFAULT:I = 0x4

.field public static final MAX_ACTIVITY_COUNT_UNLIMITED:I = 0x7fffffff


# instance fields
.field private mDataModel:Landroid/support/v7/widget/ActivityChooserModel;

.field private mHighlightDefaultActivity:Z

.field private mMaxActivityCount:I

.field private mShowDefaultActivity:Z

.field private mShowFooterView:Z

.field final synthetic this$0:Landroid/support/v7/widget/ActivityChooserView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActivityChooserView;)V
    .registers 3

    .prologue
    .line 638
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 652
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ActivityChooserView;Landroid/support/v7/widget/ActivityChooserView$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v7/widget/ActivityChooserView;
    .param p2, "x1"    # Landroid/support/v7/widget/ActivityChooserView$1;

    .prologue
    .line 638
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;-><init>(Landroid/support/v7/widget/ActivityChooserView;)V

    return-void
.end method


# virtual methods
.method public getActivityCount()I
    .registers 2

    .prologue
    .line 799
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserModel;->getActivityCount()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 4

    .prologue
    .line 687
    const/4 v1, 0x0

    .line 688
    .local v1, "count":I
    iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActivityChooserModel;->getActivityCount()I

    move-result v0

    .line 689
    .local v0, "activityCount":I
    iget-boolean v2, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-nez v2, :cond_15

    iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 690
    add-int/lit8 v0, v0, -0x1

    .line 692
    :cond_15
    iget v2, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 693
    iget-boolean v2, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eqz v2, :cond_21

    .line 694
    add-int/lit8 v1, v1, 0x1

    .line 696
    :cond_21
    return v1
.end method

.method public getDataModel()Landroid/support/v7/widget/ActivityChooserModel;
    .registers 2

    .prologue
    .line 807
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/widget/ActivityChooserModel;

    return-object v0
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .registers 2

    .prologue
    .line 788
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getHistorySize()I
    .registers 2

    .prologue
    .line 803
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserModel;->getHistorySize()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 700
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v0

    .line 701
    .local v0, "itemViewType":I
    packed-switch v0, :pswitch_data_24

    .line 710
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 703
    :pswitch_d
    const/4 v1, 0x0

    .line 708
    :goto_e
    return-object v1

    .line 705
    :pswitch_f
    iget-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-nez v1, :cond_1d

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 706
    add-int/lit8 p1, p1, 0x1

    .line 708
    :cond_1d
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    goto :goto_e

    .line 701
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 715
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 674
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_e

    .line 675
    const/4 v0, 0x1

    .line 677
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getShowDefaultActivity()Z
    .registers 2

    .prologue
    .line 821
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 719
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v3

    .line 720
    .local v3, "itemViewType":I
    packed-switch v3, :pswitch_data_9e

    .line 752
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 722
    :pswitch_f
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v9, :cond_41

    .line 723
    :cond_17
    iget-object v6, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v6}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Landroid/support/v7/appcompat/R$layout;->abc_activity_chooser_view_list_item:I

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 725
    invoke-virtual {p2, v9}, Landroid/view/View;->setId(I)V

    .line 726
    sget v6, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 727
    .local v5, "titleView":Landroid/widget/TextView;
    iget-object v6, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v6}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Landroid/support/v7/appcompat/R$string;->abc_activity_chooser_view_see_all:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v5    # "titleView":Landroid/widget/TextView;
    :cond_41
    move-object v1, p2

    .line 750
    .end local p2    # "convertView":Landroid/view/View;
    .local v1, "convertView":Landroid/view/View;
    :goto_42
    return-object v1

    .line 732
    .end local v1    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :pswitch_43
    if-eqz p2, :cond_4d

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Landroid/support/v7/appcompat/R$id;->list_item:I

    if-eq v6, v7, :cond_5d

    .line 733
    :cond_4d
    iget-object v6, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v6}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Landroid/support/v7/appcompat/R$layout;->abc_activity_chooser_view_list_item:I

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 736
    :cond_5d
    iget-object v6, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v6}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 738
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    sget v6, Landroid/support/v7/appcompat/R$id;->icon:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 739
    .local v2, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 740
    .local v0, "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 742
    sget v6, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 743
    .restart local v5    # "titleView":Landroid/widget/TextView;
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    iget-boolean v6, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-eqz v6, :cond_9a

    if-nez p1, :cond_9a

    iget-boolean v6, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    if-eqz v6, :cond_9a

    .line 746
    invoke-static {p2, v9}, Landroid/support/v4/view/ViewCompat;->setActivated(Landroid/view/View;Z)V

    :goto_98
    move-object v1, p2

    .line 750
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v1    # "convertView":Landroid/view/View;
    goto :goto_42

    .line 748
    .end local v1    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_9a
    invoke-static {p2, v8}, Landroid/support/v4/view/ViewCompat;->setActivated(Landroid/view/View;Z)V

    goto :goto_98

    .line 720
    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_43
        :pswitch_f
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 683
    const/4 v0, 0x3

    return v0
.end method

.method public measureContentWidth()I
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 759
    iget v5, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 760
    .local v5, "oldMaxActivityCount":I
    const v7, 0x7fffffff

    iput v7, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 762
    const/4 v0, 0x0

    .line 763
    .local v0, "contentWidth":I
    const/4 v4, 0x0

    .line 765
    .local v4, "itemView":Landroid/view/View;
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 766
    .local v6, "widthMeasureSpec":I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 767
    .local v2, "heightMeasureSpec":I
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v1

    .line 769
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v1, :cond_2c

    .line 770
    const/4 v7, 0x0

    invoke-virtual {p0, v3, v4, v7}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 771
    invoke-virtual {v4, v6, v2}, Landroid/view/View;->measure(II)V

    .line 772
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 769
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 775
    :cond_2c
    iput v5, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 777
    return v0
.end method

.method public setDataModel(Landroid/support/v7/widget/ActivityChooserModel;)V
    .registers 4
    .param p1, "dataModel"    # Landroid/support/v7/widget/ActivityChooserModel;

    .prologue
    .line 661
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    # getter for: Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v1}, Landroid/support/v7/widget/ActivityChooserView;->access$000(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v0

    .line 662
    .local v0, "oldDataModel":Landroid/support/v7/widget/ActivityChooserModel;
    if-eqz v0, :cond_1d

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 663
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    # getter for: Landroid/support/v7/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;
    invoke-static {v1}, Landroid/support/v7/widget/ActivityChooserView;->access$1100(Landroid/support/v7/widget/ActivityChooserView;)Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    .line 665
    :cond_1d
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/support/v7/widget/ActivityChooserModel;

    .line 666
    if-eqz p1, :cond_32

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 667
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    # getter for: Landroid/support/v7/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;
    invoke-static {v1}, Landroid/support/v7/widget/ActivityChooserView;->access$1100(Landroid/support/v7/widget/ActivityChooserView;)Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 669
    :cond_32
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 670
    return-void
.end method

.method public setMaxActivityCount(I)V
    .registers 3
    .param p1, "maxActivityCount"    # I

    .prologue
    .line 781
    iget v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    if-eq v0, p1, :cond_9

    .line 782
    iput p1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 783
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 785
    :cond_9
    return-void
.end method

.method public setShowDefaultActivity(ZZ)V
    .registers 4
    .param p1, "showDefaultActivity"    # Z
    .param p2, "highlightDefaultActivity"    # Z

    .prologue
    .line 812
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-ne v0, p1, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    if-eq v0, p2, :cond_f

    .line 814
    :cond_8
    iput-boolean p1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    .line 815
    iput-boolean p2, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    .line 816
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 818
    :cond_f
    return-void
.end method

.method public setShowFooterView(Z)V
    .registers 3
    .param p1, "showFooterView"    # Z

    .prologue
    .line 792
    iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eq v0, p1, :cond_9

    .line 793
    iput-boolean p1, p0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    .line 794
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 796
    :cond_9
    return-void
.end method
