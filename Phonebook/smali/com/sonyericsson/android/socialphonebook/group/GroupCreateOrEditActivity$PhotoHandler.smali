.class final Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;
.super Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;
.source "GroupCreateOrEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler$PhotoEditorListener;
    }
.end annotation


# instance fields
.field private final mEditor:Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;

.field private final mPhotoEditorListener:Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;)Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;->mEditor:Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;

    return-object v0
.end method

.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Landroid/app/Activity;Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;ILcom/android/contacts/common/model/RawContactDeltaList;Z)V
    .locals 2
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "editor"    # Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;
    .param p4, "photoMode"    # I
    .param p5, "state"    # Lcom/android/contacts/common/model/RawContactDeltaList;
    .param p6, "isGroupPhoto"    # Z

    .prologue
    .line 982
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    .line 984
    sget-object v0, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;->Group:Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;-><init>(Landroid/app/Activity;Landroid/view/View;ILcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;)V

    .line 985
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;->mEditor:Lcom/sonyericsson/android/socialphonebook/ui/widget/GroupPhotoEditorView;

    .line 986
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler$PhotoEditorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler$PhotoEditorListener;-><init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler$PhotoEditorListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;->mPhotoEditorListener:Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;

    .line 983
    return-void
.end method


# virtual methods
.method public getListener()Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;->mPhotoEditorListener:Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;

    return-object v0
.end method

.method public startPhotoActivity(Landroid/content/Intent;ILandroid/net/Uri;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "photoFile"    # Landroid/net/Uri;

    .prologue
    .line 996
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-static {v0, p3}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-set0(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 997
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$PhotoHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 995
    return-void
.end method
