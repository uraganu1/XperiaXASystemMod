.class public Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;
.super Ljava/lang/Object;
.source "AggregateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$TooManyLinkException;,
        Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;,
        Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;,
        Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;,
        Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;,
        Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$SavingContactProgressDialog;
    }
.end annotation


# static fields
.field public static final MAX_CONTACT_SIZE:I = 0xf
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;J)Landroid/view/View;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactName"    # Ljava/lang/String;
    .param p2, "photo"    # Landroid/graphics/Bitmap;
    .param p3, "contactId"    # J

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;->buildContent(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;J)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;->TAG:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildContent(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;J)Landroid/view/View;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactName"    # Ljava/lang/String;
    .param p2, "photo"    # Landroid/graphics/Bitmap;
    .param p3, "contactId"    # J

    .prologue
    const/4 v3, 0x0

    .line 253
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f04000a

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 254
    .local v7, "view":Landroid/view/View;
    const v0, 0x7f0e0043

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    const v0, 0x7f0e0042

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 257
    .local v1, "image":Landroid/widget/ImageView;
    if-nez p2, :cond_0

    .line 258
    invoke-static {p0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    .line 260
    sget-object v6, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 259
    const-wide/16 v2, 0x0

    move-wide v4, p3

    .line 258
    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/photomanager/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JJLcom/android/contacts/photomanager/DefaultImageRequest;)V

    .line 265
    :goto_0
    return-object v7

    .line 262
    :cond_0
    invoke-static {p0, p2, p3, p4}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->createRoundedAvatarFromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static buildJoinContactDiff(Ljava/util/ArrayList;JJ)V
    .locals 3
    .param p1, "rawContactId1"    # J
    .param p3, "rawContactId2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 165
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 166
    const-string/jumbo v1, "raw_contact_id1"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 167
    const-string/jumbo v1, "raw_contact_id2"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 168
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public static checkContactSizeAndShowErrorDialogIfNeeded(Landroid/app/Activity;I)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "currentNumberOfRawContacts"    # I

    .prologue
    .line 477
    const/16 v0, 0xf

    if-ge p1, v0, :cond_0

    .line 478
    const/4 v0, 0x1

    return v0

    .line 480
    :cond_0
    const v0, 0x7f09020f

    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;->showErrorDialog(Landroid/app/Activity;I)V

    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public static checkContactSizeAndShowErrorDialogIfNeeded(Landroid/app/Activity;Lcom/google/common/collect/ImmutableList;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/RawContact;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, "rawContacts":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/common/model/RawContact;>;"
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;->checkContactSizeAndShowErrorDialogIfNeeded(Landroid/app/Activity;I)Z

    move-result v0

    return v0
.end method

.method public static joinAggregate(Landroid/content/ContentResolver;JJ)[J
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "contactId1"    # J
    .param p3, "contactId2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;,
            Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$TooManyLinkException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "contactIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;->joinAggregate(Landroid/content/ContentResolver;Ljava/util/ArrayList;)[J

    move-result-object v1

    .line 104
    .local v1, "rawContactIds":[J
    return-object v1
.end method

.method public static joinAggregate(Landroid/content/ContentResolver;Ljava/util/ArrayList;)[J
    .locals 13
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)[J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;,
            Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$TooManyLinkException;
        }
    .end annotation

    .prologue
    .local p1, "contactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v12, 0x0

    .line 112
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v11, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "contact_id"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v0, " IN("

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 116
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v0, ","

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 120
    const-string/jumbo v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 123
    const-string/jumbo v0, "_id"

    aput-object v0, v2, v12

    move-object v0, p0

    move-object v5, v4

    .line 122
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 126
    .local v6, "c":Landroid/database/Cursor;
    new-array v10, v12, [J

    .line 127
    .local v10, "rawContactIds":[J
    if-eqz v6, :cond_3

    .line 130
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    .line 131
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$TooManyLinkException;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$TooManyLinkException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 139
    throw v0

    .line 134
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [J

    .line 135
    const/4 v7, 0x0

    :goto_1
    array-length v0, v10

    if-ge v7, v0, :cond_2

    .line 136
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 137
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v10, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 140
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v9, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x0

    :goto_2
    array-length v0, v10

    if-ge v7, v0, :cond_6

    .line 147
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    array-length v0, v10

    if-ge v8, v0, :cond_5

    .line 148
    if-eq v7, v8, :cond_4

    .line 149
    aget-wide v0, v10, v7

    aget-wide v4, v10, v8

    invoke-static {v9, v0, v1, v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;->buildJoinContactDiff(Ljava/util/ArrayList;JJ)V

    .line 147
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 146
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 154
    .end local v8    # "j":I
    :cond_6
    const-string/jumbo v0, "com.android.contacts"

    invoke-virtual {p0, v0, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 155
    return-object v10
.end method

.method public static joinAggregateInBackground(Landroid/app/Activity;JJ)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "contactId1"    # J
    .param p3, "contactId2"    # J

    .prologue
    .line 277
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->verifyIfActivityIsTransactionSafe(Landroid/app/Activity;)V

    .line 278
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;-><init>(Landroid/app/Activity;)V

    .line 279
    .local v0, "task":Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$PersistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 276
    return-void
.end method

.method public static showErrorDialog(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "messageId"    # I

    .prologue
    .line 191
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->verifyIfActivityIsTransactionSafe(Landroid/app/Activity;)V

    move-object v1, p0

    .line 192
    check-cast v1, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;->isSafeToCommitTransactions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;->newInstance(I)Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;

    move-result-object v0

    .line 194
    .local v0, "errorDialog":Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 190
    .end local v0    # "errorDialog":Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$ErrorDialog;
    :cond_0
    return-void
.end method

.method public static showNewContact(Landroid/app/Activity;Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "wrapper"    # Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    .prologue
    .line 179
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->verifyIfActivityIsTransactionSafe(Landroid/app/Activity;)V

    move-object v1, p0

    .line 181
    check-cast v1, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;->isSafeToCommitTransactions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;->newInstance(Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;)Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;

    move-result-object v0

    .line 183
    .local v0, "dialog":Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 178
    .end local v0    # "dialog":Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;
    :cond_0
    return-void
.end method
