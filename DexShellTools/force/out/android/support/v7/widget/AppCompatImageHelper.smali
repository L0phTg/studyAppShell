.class public Landroid/support/v7/widget/AppCompatImageHelper;
.super Ljava/lang/Object;
.source "AppCompatImageHelper.java"


# instance fields
.field private final mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

.field private final mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/support/v7/widget/AppCompatDrawableManager;)V
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "drawableManager"    # Landroid/support/v7/widget/AppCompatDrawableManager;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 36
    iput-object p2, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 37
    return-void
.end method


# virtual methods
.method hasOverlappingRendering()Z
    .registers 4

    .prologue
    .line 84
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 85
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_12

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_12

    .line 89
    const/4 v1, 0x0

    .line 91
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 10
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/4 v6, -0x1

    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    :try_start_2
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 44
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_33

    .line 45
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView:[I

    const/4 v5, 0x0

    invoke-static {v3, p1, v4, p2, v5}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 50
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_srcCompat:I

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 51
    .local v2, "id":I
    if-eq v2, v6, :cond_33

    .line 52
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_33

    .line 54
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    .end local v2    # "id":I
    :cond_33
    if-eqz v1, :cond_38

    .line 60
    invoke-static {v1}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_3e

    .line 63
    :cond_38
    if-eqz v0, :cond_3d

    .line 64
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 67
    :cond_3d
    return-void

    .line 63
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :catchall_3e
    move-exception v3

    if-eqz v0, :cond_44

    .line 64
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    :cond_44
    throw v3
.end method

.method public setImageResource(I)V
    .registers 5
    .param p1, "resId"    # I

    .prologue
    .line 70
    if-eqz p1, :cond_28

    .line 71
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 72
    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_12
    if-eqz v0, :cond_17

    .line 75
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_17
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1c
    return-void

    .line 72
    :cond_1d
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 73
    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_12

    .line 79
    :cond_28
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1c
.end method
