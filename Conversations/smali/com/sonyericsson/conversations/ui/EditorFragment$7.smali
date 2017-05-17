.class Lcom/sonyericsson/conversations/ui/EditorFragment$7;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Lcom/sonymobile/forklift/OnComplete1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->setClearWallpaperVisibilityAsync(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonymobile/forklift/OnComplete1",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

.field final synthetic val$clearWallpaperMenuItem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;
    .param p2, "val$clearWallpaperMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 902
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$7;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$7;->val$clearWallpaperMenuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "hasWallpaper"    # Ljava/lang/Boolean;

    .prologue
    .line 905
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$7;->val$clearWallpaperMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 904
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0
    .param p1, "hasWallpaper"    # Ljava/lang/Object;

    .prologue
    .line 904
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "hasWallpaper":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment$7;->onComplete(Ljava/lang/Boolean;)V

    return-void
.end method
