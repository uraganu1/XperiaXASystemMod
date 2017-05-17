.class public final Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;
.super Lcom/android/contacts/activities/TransactionSafeActivity;
.source "ShowOrCreateActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler$AsyncQueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;
    }
.end annotation


# static fields
.field static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field static final CONTACT_ID_INDEX:I = 0x0

.field static final CREATE_CONTACT_DIALOG_LAUNCHED:Ljava/lang/String; = "CREATE_CONTACT_DIALOG_LAUNCHED"

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field static final QUERY_TOKEN:I = 0x2a

.field static final TAG:Ljava/lang/String; = "ShowOrCreateActivity"


# instance fields
.field private mCreateContactDialogLaunched:Z

.field private mCreateDescrip:Ljava/lang/String;

.field private mCreateExtras:Landroid/os/Bundle;

.field private mCreateForce:Z

.field private mQueryHandler:Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler;

.field private mQueryString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-array v0, v3, [Ljava/lang/String;

    .line 74
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 73
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 77
    new-array v0, v3, [Ljava/lang/String;

    .line 78
    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v2

    .line 77
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0x2a

    const/4 v2, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/android/contacts/activities/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    if-eqz p1, :cond_0

    const-string/jumbo v0, "CREATE_CONTACT_DIALOG_LAUNCHED"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mCreateContactDialogLaunched:Z

    .line 103
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_4

    .line 108
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler;

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 114
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 117
    .local v8, "data":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 118
    .local v11, "scheme":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 119
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 120
    .local v11, "scheme":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mQueryString:Ljava/lang/String;

    .line 124
    .end local v11    # "scheme":Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    .line 125
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 126
    .local v10, "originalExtras":Landroid/os/Bundle;
    if-eqz v10, :cond_2

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 131
    :cond_2
    const-string/jumbo v0, "com.android.contacts.action.CREATE_DESCRIPTION"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mCreateDescrip:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mCreateDescrip:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mQueryString:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mCreateDescrip:Ljava/lang/String;

    .line 137
    :cond_3
    const-string/jumbo v0, "com.android.contacts.action.FORCE_CREATE"

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mCreateForce:Z

    .line 140
    const-string/jumbo v0, "mailto"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string/jumbo v4, "email"

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mQueryString:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 144
    .local v3, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler;

    sget-object v4, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 145
    const-string/jumbo v5, "in_visible_group = 1 "

    move-object v6, v2

    move-object v7, v2

    .line 144
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_1
    return-void

    .line 110
    .end local v8    # "data":Landroid/net/Uri;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "originalExtras":Landroid/os/Bundle;
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    goto :goto_0

    .line 147
    .restart local v8    # "data":Landroid/net/Uri;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "originalExtras":Landroid/os/Bundle;
    :cond_5
    const-string/jumbo v0, "tel"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string/jumbo v4, "phone"

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mQueryString:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 151
    .restart local v3    # "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler;

    sget-object v4, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 152
    const-string/jumbo v5, "in_visible_group = 1 "

    move-object v6, v2

    move-object v7, v2

    .line 151
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 155
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_6
    const-string/jumbo v0, "ShowOrCreateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->finish()V

    goto :goto_1
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x1

    .line 187
    if-nez p3, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->finish()V

    .line 190
    return-void

    .line 194
    :cond_0
    const/4 v3, 0x0

    .line 195
    .local v3, "count":I
    const-wide/16 v0, -0x1

    .line 197
    .local v0, "contactId":J
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 198
    if-ne v3, v10, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 200
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 203
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 206
    if-ne v3, v10, :cond_3

    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-eqz v8, :cond_3

    .line 208
    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 209
    .local v2, "contactUri":Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-direct {v7, v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 210
    .local v7, "viewIntent":Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->startActivity(Landroid/content/Intent;)V

    .line 211
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->finish()V

    .line 186
    .end local v2    # "contactUri":Landroid/net/Uri;
    .end local v7    # "viewIntent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 202
    :catchall_0
    move-exception v8

    .line 203
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 202
    throw v8

    .line 213
    :cond_3
    if-le v3, v10, :cond_4

    .line 215
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.SEARCH"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v6, "listIntent":Landroid/content/Intent;
    const-string/jumbo v8, "query"

    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mQueryString:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    new-instance v8, Landroid/content/ComponentName;

    const-class v9, Lcom/sonyericsson/android/socialphonebook/activities/SocialPhonebookActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 218
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v6, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->startActivity(Landroid/content/Intent;)V

    .line 220
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->finish()V

    goto :goto_0

    .line 224
    .end local v6    # "listIntent":Landroid/content/Intent;
    :cond_4
    iget-boolean v8, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mCreateForce:Z

    if-eqz v8, :cond_5

    .line 226
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.INSERT"

    sget-object v9, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 227
    .local v4, "createIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 228
    const-string/jumbo v8, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->startActivity(Landroid/content/Intent;)V

    .line 231
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->finish()V

    goto :goto_0

    .line 234
    .end local v4    # "createIntent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->isSafeToCommitTransactions()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 235
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    .line 236
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mCreateDescrip:Ljava/lang/String;

    .line 235
    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;->-wrap0(Landroid/os/Bundle;Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;

    move-result-object v5

    .line 237
    .local v5, "dialog":Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    sget-object v9, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity$CreateContactDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 238
    iput-boolean v10, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mCreateContactDialogLaunched:Z

    goto :goto_0
.end method

.method public onQueryEntitiesComplete(ILjava/lang/Object;Landroid/content/EntityIterator;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "iterator"    # Landroid/content/EntityIterator;

    .prologue
    .line 247
    if-eqz p3, :cond_0

    .line 248
    invoke-interface {p3}, Landroid/content/EntityIterator;->close()V

    .line 245
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/android/contacts/activities/TransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 180
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mCreateContactDialogLaunched:Z

    if-eqz v0, :cond_0

    .line 181
    const-string/jumbo v0, "CREATE_CONTACT_DIALOG_LAUNCHED"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onStop()V

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler;->setQueryListener(Lcom/sonyericsson/android/socialphonebook/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    .line 171
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->mCreateContactDialogLaunched:Z

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/ShowOrCreateActivity;->finish()V

    .line 161
    :cond_0
    return-void
.end method
