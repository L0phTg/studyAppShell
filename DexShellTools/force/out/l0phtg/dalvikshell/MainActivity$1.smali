.class Ll0phtg/dalvikshell/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll0phtg/dalvikshell/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ll0phtg/dalvikshell/MainActivity;


# direct methods
.method constructor <init>(Ll0phtg/dalvikshell/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Ll0phtg/dalvikshell/MainActivity;

    .prologue
    .line 17
    iput-object p1, p0, Ll0phtg/dalvikshell/MainActivity$1;->this$0:Ll0phtg/dalvikshell/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 20
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ll0phtg/dalvikshell/MainActivity$1;->this$0:Ll0phtg/dalvikshell/MainActivity;

    const-class v2, Ll0phtg/dalvikshell/SubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Ll0phtg/dalvikshell/MainActivity$1;->this$0:Ll0phtg/dalvikshell/MainActivity;

    invoke-virtual {v1, v0}, Ll0phtg/dalvikshell/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 22
    return-void
.end method
