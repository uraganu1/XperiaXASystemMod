.class public abstract Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;
.super Ljava/lang/Object;
.source "PhotoSelectionHandler.java"

# interfaces
.implements Lcom/android/contacts/editor/PhotoActionPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "PhotoActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCurrentPhotoUri()Landroid/net/Uri;
.end method

.method public abstract onPhotoSelected(Landroid/net/Uri;)Z
.end method

.method public abstract onPhotoSelectionDismissed()V
.end method

.method public onPickFromCloudChosen()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->-get2(Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->-wrap1(Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;Landroid/net/Uri;)V

    .line 296
    return-void
.end method

.method public onPickFromGalleryChosen()V
    .locals 4

    .prologue
    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->-get2(Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->-wrap2(Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090084

    const/4 v3, 0x1

    .line 290
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onTakePhotoChosen()V
    .locals 4

    .prologue
    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->-get2(Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->-wrap3(Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;

    iget-object v1, v1, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090084

    const/4 v3, 0x1

    .line 279
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
