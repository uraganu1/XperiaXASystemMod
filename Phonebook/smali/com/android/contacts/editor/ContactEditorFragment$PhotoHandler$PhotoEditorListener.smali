.class final Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;
.super Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;
.source "ContactEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor$EditorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoEditorListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;


# direct methods
.method private constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .prologue
    .line 2729
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)V

    return-void
.end method


# virtual methods
.method public getCurrentPhotoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2788
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-get6(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onDefaultPhotoSelected(J)V
    .locals 1
    .param p1, "contactPhotoId"    # J

    .prologue
    .line 2798
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->-set7(Lcom/android/contacts/editor/ContactEditorFragment;J)J

    .line 2799
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-wrap4(Lcom/android/contacts/editor/ContactEditorFragment;)V

    .line 2797
    return-void
.end method

.method public onDeleteRequested(Lcom/android/contacts/editor/Editor;)V
    .locals 0
    .param p1, "removedEditor"    # Lcom/android/contacts/editor/Editor;

    .prologue
    .line 2748
    return-void
.end method

.method public onPhotoSelected(Landroid/net/Uri;)Z
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2774
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->-get0(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2776
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-wide v4, v3, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mRawContactId:J

    invoke-static {v2, v4, v5, v0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->-wrap10(Lcom/android/contacts/editor/ContactEditorFragment;JLandroid/graphics/Bitmap;Landroid/net/Uri;)V

    .line 2777
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->-set1(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .line 2778
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v2, v2, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v2}, Lcom/android/contacts/editor/ContactEditorFragment;->-wrap4(Lcom/android/contacts/editor/ContactEditorFragment;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2779
    const/4 v2, 0x1

    return v2

    .line 2780
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 2781
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "File not found"

    invoke-static {v2, v3, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2783
    const/4 v2, 0x0

    return v2
.end method

.method public onPhotoSelectionDismissed()V
    .locals 0

    .prologue
    .line 2792
    return-void
.end method

.method public onRemovePictureChosen()V
    .locals 4

    .prologue
    .line 2763
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->-get1(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 2767
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-get15(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-wide v2, v1, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mRawContactId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2768
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-wrap4(Lcom/android/contacts/editor/ContactEditorFragment;)V

    .line 2762
    return-void
.end method

.method public onRequest(I)V
    .locals 5
    .param p1, "request"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2734
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->-wrap1(Lcom/android/contacts/editor/ContactEditorFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2736
    :cond_0
    if-ne p1, v3, :cond_1

    .line 2737
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 2739
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 2733
    :cond_1
    :goto_0
    return-void

    .line 2742
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;->this$1:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    invoke-static {v1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->-get1(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onUseAsPrimaryChosen()V
    .locals 0

    .prologue
    .line 2754
    return-void
.end method
