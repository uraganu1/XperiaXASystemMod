.class public Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;
.super Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;
.source "ContactsAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;,
        Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;[J)V
    .locals 0
    .param p1, "selectedContact"    # [J

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;->handleSendContactByVcard([J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarAction;-><init>()V

    return-void
.end method

.method public static buildContactAttachment(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    .locals 1
    .param p0, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 57
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setUri(Landroid/net/Uri;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setContact()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->build()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v0

    return-object v0
.end method

.method public static buildContactStringAttachment(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;
    .locals 1
    .param p0, "contactString"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setText(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->setContact()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment$Builder;->build()Lcom/sonyericsson/conversations/ui/attachments/actions/Attachment;

    move-result-object v0

    return-object v0
.end method

.method private getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getContactPicker()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private handleSendContactByVcard([J)V
    .locals 4
    .param p1, "selectedContact"    # [J

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 152
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;[J)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    sget-object v2, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;->V_CARD:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 151
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 157
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v2, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$2;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$2;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;[J)V

    .line 156
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->handleOptionalPermissionRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public handleActivityResult(ILandroid/content/Intent;)V
    .locals 18
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 91
    const-string/jumbo v14, "com.sonyericsson.android.socialphonebook.intent.extra.URIS"

    .line 90
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 92
    .local v5, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 93
    :cond_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 98
    .local v11, "size":I
    new-array v4, v11, [J

    .line 99
    .local v4, "contactIds":[J
    const/4 v7, 0x0

    .line 100
    .local v7, "index":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "uriContact$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    .line 101
    .local v12, "uriContact":Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 102
    .local v2, "contactId":J
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "index":I
    .local v8, "index":I
    aput-wide v2, v4, v7

    move v7, v8

    .end local v8    # "index":I
    .restart local v7    # "index":I
    goto :goto_0

    .line 105
    .end local v2    # "contactId":J
    .end local v12    # "uriContact":Landroid/net/Uri;
    :cond_2
    sget-object v14, Lcom/sonyericsson/conversations/ui/AddMediaType;->SEND_CONTACT:Lcom/sonyericsson/conversations/ui/AddMediaType;

    int-to-long v0, v11

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->pushGoogleAnalyticsEvent(Lcom/sonyericsson/conversations/ui/AddMediaType;J)V

    .line 107
    const/4 v14, 0x1

    if-ne v11, v14, :cond_4

    .line 108
    new-instance v10, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v4}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$1;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;[J)V

    .line 130
    .local v10, "sendContactListener":Landroid/content/DialogInterface$OnClickListener;
    const/4 v14, 0x2

    new-array v9, v14, [Ljava/lang/String;

    .line 131
    .local v9, "items":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 132
    const v15, 0x7f0b01c1

    .line 131
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v9, v15

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 134
    const v15, 0x7f0b01c2

    .line 133
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v9, v15

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 137
    .local v6, "context":Landroid/content/Context;
    if-eqz v6, :cond_3

    .line 138
    new-instance v14, Landroid/app/AlertDialog$Builder;

    invoke-direct {v14, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    const v15, 0x7f0b01c0

    .line 138
    invoke-virtual {v6, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 89
    .end local v6    # "context":Landroid/content/Context;
    .end local v9    # "items":[Ljava/lang/String;
    .end local v10    # "sendContactListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_3
    :goto_1
    return-void

    .line 147
    :cond_4
    new-instance v14, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;-><init>(Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;[J)V

    const/4 v15, 0x1

    new-array v15, v15, [Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    sget-object v16, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;->TEXT:Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$Modes;

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-virtual {v14, v15}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction$ComposeContactAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public handleButtonClicked()V
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;->getParent()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;->getMenuItemEnum()Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment;->requestResult(Lcom/sonyericsson/conversations/ui/attachments/AttachmentBarFragment$AttachmentBarMenuItem;Landroid/content/Intent;)Z

    .line 84
    return-void
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/attachments/actions/ContactsAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sonyericsson/conversations/util/PackageUtil;->isActivityEnabled(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
