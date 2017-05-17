.class final Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
.super Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;
    }
.end annotation


# instance fields
.field private final mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

.field private final mPhotoEditorListener:Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;

.field final mRawContactId:J

.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/BaseRawContactEditorView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/app/Activity;Lcom/android/contacts/editor/BaseRawContactEditorView;ILcom/android/contacts/common/model/RawContactDeltaList;Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "editor"    # Lcom/android/contacts/editor/BaseRawContactEditorView;
    .param p4, "photoMode"    # I
    .param p5, "state"    # Lcom/android/contacts/common/model/RawContactDeltaList;
    .param p6, "typeOfDialog"    # Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    .prologue
    .line 2706
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    .line 2709
    invoke-virtual {p3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4, p6}, Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler;-><init>(Landroid/app/Activity;Landroid/view/View;ILcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;)V

    .line 2710
    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 2711
    invoke-virtual {p3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mRawContactId:J

    .line 2712
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mPhotoEditorListener:Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;

    .line 2707
    return-void
.end method


# virtual methods
.method public getListener()Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;
    .locals 1

    .prologue
    .line 2717
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mPhotoEditorListener:Lcom/sonyericsson/android/socialphonebook/ui/PhotoSelectionHandler$PhotoActionListener;

    return-object v0
.end method

.method public startPhotoActivity(Landroid/content/Intent;ILandroid/net/Uri;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->mEditor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->-set10(Lcom/android/contacts/editor/ContactEditorFragment;J)J

    .line 2723
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment;->-set1(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .line 2724
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->-set11(Lcom/android/contacts/editor/ContactEditorFragment;I)I

    .line 2725
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {v0, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->-set2(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2726
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2721
    return-void
.end method
