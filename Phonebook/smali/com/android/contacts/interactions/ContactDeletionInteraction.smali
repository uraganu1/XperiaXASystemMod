.class public Lcom/android/contacts/interactions/ContactDeletionInteraction;
.super Landroid/app/Fragment;
.source "ContactDeletionInteraction.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/content/DialogInterface$OnDismissListener;"
    }
.end annotation


# static fields
.field public static final ARG_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field private static final COLUMN_INDEX_ACCOUNT_TYPE:I = 0x1

.field private static final COLUMN_INDEX_CONTACT_ID:I = 0x3

.field private static final COLUMN_INDEX_DATA_SET:I = 0x2

.field private static final COLUMN_INDEX_LOOKUP_KEY:I = 0x4

.field private static final COLUMN_INDEX_RAW_CONTACT_ID:I = 0x0

.field private static final ENTITY_PROJECTION:[Ljava/lang/String;

.field private static final FRAGMENT_TAG:Ljava/lang/String; = "deleteContact"

.field private static final KEY_ACTIVE:Ljava/lang/String; = "active"

.field private static final KEY_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field private static final KEY_FINISH_WHEN_DONE:Ljava/lang/String; = "finishWhenDone"


# instance fields
.field private mActive:Z

.field private mContactUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFinishActivityWhenDone:Z

.field mMessageId:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 66
    const-string/jumbo v1, "raw_contact_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "account_type"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "data_set"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 69
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 65
    sput-object v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->ENTITY_PROJECTION:[Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private setFinishActivityWhenDone(Z)V
    .locals 0
    .param p1, "finishActivityWhenDone"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mFinishActivityWhenDone:Z

    .line 186
    return-void
.end method

.method private setTestLoaderManager(Lcom/android/contacts/interactions/TestLoaderManager;)V
    .locals 0
    .param p1, "mockLoaderManager"    # Lcom/android/contacts/interactions/TestLoaderManager;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManager;

    .line 156
    return-void
.end method

.method private showDialog(ILandroid/net/Uri;Z)V
    .locals 3
    .param p1, "messageId"    # I
    .param p2, "contactUri"    # Landroid/net/Uri;
    .param p3, "isSimContact"    # Z

    .prologue
    .line 287
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 289
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 287
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 291
    new-instance v1, Lcom/android/contacts/interactions/ContactDeletionInteraction$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/contacts/interactions/ContactDeletionInteraction$1;-><init>(Lcom/android/contacts/interactions/ContactDeletionInteraction;Landroid/net/Uri;Z)V

    .line 290
    const v2, 0x7f09012a

    .line 287
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    .line 300
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 301
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 286
    return-void
.end method

.method public static start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "finishActivityWhenDone"    # Z

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->startWithTestLoaderManager(Landroid/app/Activity;Landroid/net/Uri;ZLcom/android/contacts/interactions/TestLoaderManager;)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    move-result-object v0

    return-object v0
.end method

.method static startWithTestLoaderManager(Landroid/app/Activity;Landroid/net/Uri;ZLcom/android/contacts/interactions/TestLoaderManager;)Lcom/android/contacts/interactions/ContactDeletionInteraction;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "finishActivityWhenDone"    # Z
    .param p3, "testLoaderManager"    # Lcom/android/contacts/interactions/TestLoaderManager;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 120
    if-nez p1, :cond_0

    .line 121
    return-object v2

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 126
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const-string/jumbo v2, "deleteContact"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;

    .line 127
    .local v0, "fragment":Lcom/android/contacts/interactions/ContactDeletionInteraction;
    if-nez v0, :cond_1

    .line 128
    new-instance v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;

    .end local v0    # "fragment":Lcom/android/contacts/interactions/ContactDeletionInteraction;
    invoke-direct {v0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;-><init>()V

    .line 129
    .restart local v0    # "fragment":Lcom/android/contacts/interactions/ContactDeletionInteraction;
    invoke-direct {v0, p3}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setTestLoaderManager(Lcom/android/contacts/interactions/TestLoaderManager;)V

    .line 130
    invoke-virtual {v0, p1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setContactUri(Landroid/net/Uri;)V

    .line 131
    invoke-direct {v0, p2}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setFinishActivityWhenDone(Z)V

    .line 132
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->beginFragmentTransaction(Landroid/app/FragmentManager;)Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string/jumbo v3, "deleteContact"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 139
    :goto_0
    return-object v0

    .line 135
    :cond_1
    invoke-direct {v0, p3}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setTestLoaderManager(Lcom/android/contacts/interactions/TestLoaderManager;)V

    .line 136
    invoke-virtual {v0, p1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setContactUri(Landroid/net/Uri;)V

    .line 137
    invoke-direct {v0, p2}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->setFinishActivityWhenDone(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected doDeleteContact(Landroid/net/Uri;Z)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "isSimContact"    # Z

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    .line 330
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 329
    invoke-static {v1, p1, p2, v2}, Lcom/android/contacts/ContactSaveService;->createDeleteContactIntent(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 332
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mFinishActivityWhenDone:Z

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 328
    :cond_0
    return-void
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 146
    .local v0, "loaderManager":Landroid/app/LoaderManager;
    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManager;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManager;

    invoke-virtual {v1, v0}, Lcom/android/contacts/interactions/TestLoaderManager;->setDelegate(Landroid/app/LoaderManager;)V

    .line 149
    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mTestLoaderManager:Lcom/android/contacts/interactions/TestLoaderManager;

    return-object v1

    .line 151
    :cond_0
    return-object v0
.end method

.method isStarted()Z
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->isAdded()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 321
    if-eqz p1, :cond_0

    .line 322
    const-string/jumbo v0, "active"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    .line 323
    const-string/jumbo v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    .line 324
    const-string/jumbo v0, "finishWhenDone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mFinishActivityWhenDone:Z

    .line 319
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 163
    iput-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    .line 161
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 216
    const-string/jumbo v0, "contactUri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 217
    .local v7, "contactUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContext:Landroid/content/Context;

    .line 218
    const-string/jumbo v2, "entities"

    invoke-static {v7, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/interactions/ContactDeletionInteraction;->ENTITY_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    .line 217
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 169
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 171
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 172
    iput-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    .line 167
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    .line 305
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 20
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog;->dismiss()V

    .line 226
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    .line 229
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 230
    return-void

    .line 233
    :cond_1
    const-wide/16 v4, 0x0

    .line 234
    .local v4, "contactId":J
    const/4 v9, 0x0

    .line 237
    .local v9, "lookupKey":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v13

    .line 238
    .local v13, "readOnlyRawContacts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v17

    .line 239
    .local v17, "writableRawContacts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v8, 0x0

    .line 240
    .local v8, "isSimContact":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v3

    .line 241
    .local v3, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    const/16 v18, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 242
    .end local v9    # "lookupKey":Ljava/lang/String;
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 243
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 244
    .local v10, "rawContactId":J
    const/16 v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "accountType":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 246
    const-string/jumbo v18, "com.sonyericsson.sdncontacts"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isAdnAccount(Ljava/lang/String;)Z

    move-result v18

    .line 245
    if-eqz v18, :cond_3

    .line 248
    :cond_2
    const/4 v8, 0x1

    .line 250
    :cond_3
    const/16 v18, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 251
    .local v7, "dataSet":Ljava/lang/String;
    const/16 v18, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 252
    const/16 v18, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 253
    .local v9, "lookupKey":Ljava/lang/String;
    invoke-virtual {v3, v2, v7}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v14

    .line 254
    .local v14, "type":Lcom/android/contacts/common/model/account/AccountType;
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v15

    .line 255
    :goto_1
    if-eqz v15, :cond_5

    .line 256
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :cond_4
    const/4 v15, 0x1

    .local v15, "writable":Z
    goto :goto_1

    .line 258
    .end local v15    # "writable":Z
    :cond_5
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v7    # "dataSet":Ljava/lang/String;
    .end local v9    # "lookupKey":Ljava/lang/String;
    .end local v10    # "rawContactId":J
    .end local v14    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :cond_6
    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v12

    .line 263
    .local v12, "readOnlyCount":I
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->size()I

    move-result v16

    .line 264
    .local v16, "writableCount":I
    if-lez v12, :cond_7

    if-lez v16, :cond_7

    .line 265
    const v18, 0x7f090133

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    .line 274
    :goto_2
    invoke-static {v4, v5, v9}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 275
    .local v6, "contactUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v6, v8}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->showDialog(ILandroid/net/Uri;Z)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v18

    const v19, 0x7f0e0026

    invoke-virtual/range {v18 .. v19}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 223
    return-void

    .line 266
    .end local v6    # "contactUri":Landroid/net/Uri;
    :cond_7
    if-lez v12, :cond_8

    if-nez v16, :cond_8

    .line 267
    const v18, 0x7f090132

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    goto :goto_2

    .line 268
    :cond_8
    if-nez v12, :cond_9

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_9

    .line 269
    const v18, 0x7f090132

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    goto :goto_2

    .line 271
    :cond_9
    const v18, 0x7f090131

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mMessageId:I

    goto :goto_2
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 223
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 312
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 313
    const-string/jumbo v0, "active"

    iget-boolean v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 314
    const-string/jumbo v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 315
    const-string/jumbo v0, "finishWhenDone"

    iget-boolean v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mFinishActivityWhenDone:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 311
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 198
    iget-boolean v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    if-eqz v1, :cond_0

    .line 199
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 200
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const v2, 0x7f0e0026

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 203
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 197
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 209
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 207
    :cond_0
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    .line 178
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mActive:Z

    .line 179
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 181
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const v2, 0x7f0e0026

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 176
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
