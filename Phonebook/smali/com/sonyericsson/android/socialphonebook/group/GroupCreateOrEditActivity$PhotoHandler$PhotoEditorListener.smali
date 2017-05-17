.class final Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler$PhotoEditorListener;
.super Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;
.source "GroupCreateOrEditActivity.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor$EditorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoEditorListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler$PhotoEditorListener;->this$1:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler$PhotoEditorListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler$PhotoEditorListener;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;)V

    return-void
.end method


# virtual methods
.method public getCurrentPhotoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler$PhotoEditorListener;->this$1:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get3(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onDefaultPhotoSelected(J)V
    .locals 0
    .param p1, "rawContactId"    # J

    .prologue
    .line 1039
    return-void
.end method

.method public onDeleteRequested(Lcom/android/contacts/editor/Editor;)V
    .locals 0
    .param p1, "editor"    # Lcom/android/contacts/editor/Editor;

    .prologue
    .line 1026
    return-void
.end method

.method public onPhotoSelected(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1050
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler$PhotoEditorListener;->this$1:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;->-get0(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1051
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler$PhotoEditorListener;->this$1:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->setGroupPhoto(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    const/4 v2, 0x1

    return v2

    .line 1053
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 1054
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler$PhotoEditorListener;->this$1:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get0(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "File not found"

    invoke-static {v2, v3, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1056
    const/4 v2, 0x0

    return v2
.end method

.method public onPhotoSelectionDismissed()V
    .locals 0

    .prologue
    .line 1021
    return-void
.end method

.method public onRemovePictureChosen()V
    .locals 2

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler$PhotoEditorListener;->this$1:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->setGroupPhoto(Landroid/graphics/Bitmap;)V

    .line 1014
    return-void
.end method

.method public onRequest(I)V
    .locals 2
    .param p1, "request"    # I

    .prologue
    .line 1005
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler$PhotoEditorListener;->this$1:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler$PhotoEditorListener;->this$1:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;->-get1(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;)Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;->onClick(Landroid/view/View;)V

    .line 1004
    :cond_0
    return-void
.end method

.method public onUseAsPrimaryChosen()V
    .locals 0

    .prologue
    .line 1033
    return-void
.end method
