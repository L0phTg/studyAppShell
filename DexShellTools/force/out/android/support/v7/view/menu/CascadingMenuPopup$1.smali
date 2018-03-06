.class Landroid/support/v7/view/menu/CascadingMenuPopup$1;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/CascadingMenuPopup;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/v7/view/menu/CascadingMenuPopup;

    .prologue
    .line 95
    iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 5

    .prologue
    .line 101
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    # getter for: Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
    invoke-static {v2}, Landroid/support/v7/view/menu/CascadingMenuPopup;->access$000(Landroid/support/v7/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3c

    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    .line 102
    # getter for: Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
    invoke-static {v2}, Landroid/support/v7/view/menu/CascadingMenuPopup;->access$000(Landroid/support/v7/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v2, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroid/support/v7/widget/MenuPopupWindow;->isModal()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 103
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    # getter for: Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;
    invoke-static {v2}, Landroid/support/v7/view/menu/CascadingMenuPopup;->access$100(Landroid/support/v7/view/menu/CascadingMenuPopup;)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 105
    :cond_37
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/CascadingMenuPopup;->dismiss()V

    .line 113
    .end local v0    # "anchor":Landroid/view/View;
    :cond_3c
    return-void

    .line 108
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_3d
    iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$1;->this$0:Landroid/support/v7/view/menu/CascadingMenuPopup;

    # getter for: Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
    invoke-static {v2}, Landroid/support/v7/view/menu/CascadingMenuPopup;->access$000(Landroid/support/v7/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 109
    .local v1, "info":Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v3, v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;

    invoke-virtual {v3}, Landroid/support/v7/widget/MenuPopupWindow;->show()V

    goto :goto_47
.end method
