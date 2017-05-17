.class public Lcom/android/contacts/ContactSaveService;
.super Landroid/app/IntentService;
.source "ContactSaveService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactSaveService$Listener;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_PRIMARY:Ljava/lang/String; = "clearPrimary"

.field private static final ACTION_CREATE_GROUP:Ljava/lang/String; = "createGroup"

.field public static final ACTION_DELETE_CONTACT:Ljava/lang/String; = "delete"

.field public static final ACTION_DELETE_CONTACT_COMPLETED:Ljava/lang/String; = "deleteContactCompleted"

.field private static final ACTION_DELETE_GROUP:Ljava/lang/String; = "deleteGroup"

.field public static final ACTION_DELETE_SIM_CONTACT_STARTED:Ljava/lang/String; = "deleteSimContactStarted"

.field private static final ACTION_JOIN_CONTACTS:Ljava/lang/String; = "joinContacts"

.field private static final ACTION_NEW_RAW_CONTACT:Ljava/lang/String; = "newRawContact"

.field private static final ACTION_RENAME_GROUP:Ljava/lang/String; = "renameGroup"

.field private static final ACTION_SAVE_CONTACT:Ljava/lang/String; = "saveContact"

.field public static final ACTION_SET_ICE:Ljava/lang/String; = "setIceContact"

.field public static final ACTION_SET_ICE_BATCH:Ljava/lang/String; = "setIceContactBatch"

.field private static final ACTION_SET_RINGTONE:Ljava/lang/String; = "setRingtone"

.field private static final ACTION_SET_SEND_TO_VOICEMAIL:Ljava/lang/String; = "sendToVoicemail"

.field public static final ACTION_SET_STARRED:Ljava/lang/String; = "setStarred"

.field public static final ACTION_SET_STARRED_BATCH:Ljava/lang/String; = "setStarredBatch"

.field private static final ACTION_SET_SUPER_PRIMARY:Ljava/lang/String; = "setSuperPrimary"

.field private static final ACTION_UPDATE_GROUP:Ljava/lang/String; = "updateGroup"

.field private static final ACTION_UPDATE_MEDICAL_INFO:Ljava/lang/String; = "updateMedicalInformation"

.field private static final ALLOWED_DATA_COLUMNS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final EXTRA_ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field private static final EXTRA_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field public static final EXTRA_AGGREGATION_RESULT:Ljava/lang/String; = "aggregationResult"

.field private static final EXTRA_CALLBACK_INTENT:Ljava/lang/String; = "callbackIntent"

.field private static final EXTRA_CONTACT_ID1:Ljava/lang/String; = "contactId1"

.field private static final EXTRA_CONTACT_ID2:Ljava/lang/String; = "contactId2"

.field public static final EXTRA_CONTACT_INFO:Ljava/lang/String; = "contactInfo"

.field private static final EXTRA_CONTACT_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field public static final EXTRA_CONTACT_URIS:Ljava/lang/String; = "contactUris"

.field private static final EXTRA_CONTACT_WRITABLE:Ljava/lang/String; = "contactWritable"

.field private static final EXTRA_CONTENT_VALUES:Ljava/lang/String; = "contentValues"

.field private static final EXTRA_CUSTOM_RINGTONE:Ljava/lang/String; = "customRingtone"

.field private static final EXTRA_DATA_ID:Ljava/lang/String; = "dataId"

.field private static final EXTRA_DATA_SET:Ljava/lang/String; = "dataSet"

.field public static final EXTRA_DELETE_SUCCEEDED:Ljava/lang/String; = "deleteContactSucceeded"

.field private static final EXTRA_GROUP_ID:Ljava/lang/String; = "groupId"

.field private static final EXTRA_GROUP_LABEL:Ljava/lang/String; = "groupLabel"

.field public static final EXTRA_ICE_FLAG:Ljava/lang/String; = "iceContact"

.field public static final EXTRA_IS_SIM_CONTACT:Ljava/lang/String; = "isSimContact"

.field private static final EXTRA_MEDICAL_INFO_VALUES:Ljava/lang/String; = "medicalInfoValues"

.field private static final EXTRA_RAW_CONTACTS_TO_ADD:Ljava/lang/String; = "rawContactsToAdd"

.field private static final EXTRA_RAW_CONTACTS_TO_REMOVE:Ljava/lang/String; = "rawContactsToRemove"

.field private static final EXTRA_SAVE_IS_PROFILE:Ljava/lang/String; = "saveIsProfile"

.field public static final EXTRA_SAVE_SUCCEEDED:Ljava/lang/String; = "saveSucceeded"

.field private static final EXTRA_SEND_TO_VOICEMAIL_FLAG:Ljava/lang/String; = "sendToVoicemailFlag"

.field public static final EXTRA_STARRED_FLAG:Ljava/lang/String; = "starred"

.field private static final EXTRA_UPDATED_PHOTOS:Ljava/lang/String; = "updatedPhotos"

.field private static final PERSIST_TRIES:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/contacts/ContactSaveService$Listener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    const-class v0, Lcom/android/contacts/ContactSaveService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    .line 162
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    .line 163
    const-string/jumbo v1, "mimetype"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 164
    const-string/jumbo v1, "is_primary"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 165
    const-string/jumbo v1, "data1"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 166
    const-string/jumbo v1, "data2"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 167
    const-string/jumbo v1, "data3"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 168
    const-string/jumbo v1, "data4"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 169
    const-string/jumbo v1, "data5"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 170
    const-string/jumbo v1, "data6"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 171
    const-string/jumbo v1, "data7"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 172
    const-string/jumbo v1, "data8"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 173
    const-string/jumbo v1, "data9"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 174
    const-string/jumbo v1, "data10"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 175
    const-string/jumbo v1, "data11"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 176
    const-string/jumbo v1, "data12"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 177
    const-string/jumbo v1, "data13"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 178
    const-string/jumbo v1, "data14"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 179
    const-string/jumbo v1, "data15"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 162
    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactSaveService;->ALLOWED_DATA_COLUMNS:Ljava/util/HashSet;

    .line 189
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 188
    sput-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactSaveService;->setIntentRedelivery(Z)V

    .line 196
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    .line 193
    return-void
.end method

.method public static addMembersToGroup(Landroid/content/ContentResolver;[JJ)V
    .locals 14
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "rawContactsToAdd"    # [J
    .param p2, "groupId"    # J

    .prologue
    .line 967
    if-nez p1, :cond_0

    .line 968
    return-void

    .line 970
    :cond_0
    const/4 v7, 0x0

    array-length v8, p1

    :goto_0
    if-ge v7, v8, :cond_2

    aget-wide v4, p1, v7

    .line 973
    .local v4, "rawContactId":J
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .local v6, "rawContactOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 976
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 978
    .local v0, "assertBuilder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v9, "raw_contact_id=? AND mimetype=? AND data1=?"

    .line 980
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 981
    const-string/jumbo v11, "vnd.android.cursor.item/group_membership"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    .line 978
    invoke-virtual {v0, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 982
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    .line 983
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 986
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 988
    .local v3, "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v9, "raw_contact_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 989
    const-string/jumbo v9, "mimetype"

    const-string/jumbo v10, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 990
    const-string/jumbo v9, "data1"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 991
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1001
    const-string/jumbo v9, "com.android.contacts"

    invoke-virtual {p0, v9, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    .end local v0    # "assertBuilder":Landroid/content/ContentProviderOperation$Builder;
    .end local v3    # "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    .end local v6    # "rawContactOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1007
    :catch_0
    move-exception v1

    .line 1010
    .local v1, "e":Landroid/content/OperationApplicationException;
    sget-object v9, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Assert failed in adding raw contact ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1011
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 1010
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1011
    const-string/jumbo v11, ". Already exists in group "

    .line 1010
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1012
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 1010
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1003
    .end local v1    # "e":Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v2

    .line 1005
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v9, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Problem persisting user edits for raw contact ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1006
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 1005
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 966
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "rawContactId":J
    :cond_2
    return-void
.end method

.method private callVideoCallService(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 697
    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->isVideoCallingGroupSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 700
    const/4 v2, 0x0

    .line 701
    .local v2, "shouldUpdateCurrentState":Z
    const-string/jumbo v3, "saveMode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 702
    const-string/jumbo v3, "saveMode"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 703
    .local v0, "saveModeAction":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const/4 v2, 0x1

    .line 705
    .end local v0    # "saveModeAction":I
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 706
    .local v1, "serviceIntent":Landroid/content/Intent;
    if-eqz v2, :cond_3

    .line 707
    sget-object v3, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "com.sonymobile.videocalling.UPDATE_CURRENT_STATE"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getVideoGroupServiceUpdateCurrentStateIntent()Landroid/content/Intent;

    move-result-object v1

    .line 713
    .local v1, "serviceIntent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactSaveService;->sendBroadcast(Landroid/content/Intent;)V

    .line 696
    return-void

    .line 698
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    .end local v2    # "shouldUpdateCurrentState":Z
    :cond_1
    return-void

    .line 703
    .restart local v0    # "saveModeAction":I
    .restart local v2    # "shouldUpdateCurrentState":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 710
    .end local v0    # "saveModeAction":I
    .local v1, "serviceIntent":Landroid/content/Intent;
    :cond_3
    sget-object v3, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "com.sonymobile.videocalling.ADD_CONTACTS_PERMANENTLY_TO_GROUP"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getVideoGroupServiceAddPermanentlyIntent()Landroid/content/Intent;

    move-result-object v1

    .local v1, "serviceIntent":Landroid/content/Intent;
    goto :goto_1
.end method

.method private clearPrimary(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1289
    const-string/jumbo v3, "dataId"

    invoke-virtual {p1, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1290
    .local v0, "dataId":J
    cmp-long v3, v0, v8

    if-nez v3, :cond_0

    .line 1291
    sget-object v3, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Invalid arguments for clearPrimary request"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    return-void

    .line 1296
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1297
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "is_super_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1298
    const-string/jumbo v3, "is_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1300
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1288
    return-void
.end method

.method public static createClearPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataId"    # J

    .prologue
    .line 1282
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1283
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "clearPrimary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1284
    const-string/jumbo v1, "dataId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1285
    return-object v0
.end method

.method public static createDeleteContactIntent(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/Class;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "isSimContact"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Z",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 1309
    .local p3, "callbackActivity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1310
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v2, "delete"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1311
    const-string/jumbo v2, "contactUri"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1312
    const-string/jumbo v2, "isSimContact"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1314
    if-eqz p3, :cond_0

    .line 1315
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1316
    .local v0, "callbackIntent":Landroid/content/Intent;
    const-string/jumbo v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1318
    .end local v0    # "callbackIntent":Landroid/content/Intent;
    :cond_0
    return-object v1
.end method

.method private createGroup(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 814
    const-string/jumbo v9, "accountType"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 815
    .local v1, "accountType":Ljava/lang/String;
    const-string/jumbo v9, "accountName"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, "accountName":Ljava/lang/String;
    const-string/jumbo v9, "dataSet"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 817
    .local v3, "dataSet":Ljava/lang/String;
    const-string/jumbo v9, "groupLabel"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 818
    .local v5, "label":Ljava/lang/String;
    const-string/jumbo v9, "rawContactsToAdd"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v6

    .line 820
    .local v6, "rawContactsToAdd":[J
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 821
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v9, "account_type"

    invoke-virtual {v8, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string/jumbo v9, "account_name"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string/jumbo v9, "data_set"

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string/jumbo v9, "title"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string/jumbo v9, "group_visible"

    const-string/jumbo v10, "1"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 830
    .local v7, "resolver":Landroid/content/ContentResolver;
    sget-object v9, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 834
    .local v4, "groupUri":Landroid/net/Uri;
    if-nez v4, :cond_0

    .line 835
    sget-object v9, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Couldn\'t create group with label "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    return-void

    .line 840
    :cond_0
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-static {v7, v6, v10, v11}, Lcom/android/contacts/ContactSaveService;->addMembersToGroup(Landroid/content/ContentResolver;[JJ)V

    .line 844
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 845
    const-string/jumbo v9, "mimetype"

    const-string/jumbo v10, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string/jumbo v9, "data1"

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 848
    const-string/jumbo v9, "callbackIntent"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 849
    .local v2, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 851
    const-string/jumbo v9, "data"

    const/4 v10, 0x1

    new-array v10, v10, [Landroid/content/ContentValues;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    invoke-static {v10}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 852
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 813
    return-void
.end method

.method public static createGroupDeletionIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "groupId"    # J

    .prologue
    .line 878
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 879
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "deleteGroup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 880
    const-string/jumbo v1, "groupId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 881
    return-object v0
.end method

.method public static createGroupUpdateIntent(Landroid/content/Context;JLjava/lang/String;[J[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "groupId"    # J
    .param p3, "newLabel"    # Ljava/lang/String;
    .param p4, "rawContactsToAdd"    # [J
    .param p5, "rawContactsToRemove"    # [J
    .param p7, "callbackAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "[J[J",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 916
    .local p6, "callbackActivity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 917
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v2, "updateGroup"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    const-string/jumbo v2, "groupId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 919
    const-string/jumbo v2, "groupLabel"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 920
    const-string/jumbo v2, "rawContactsToAdd"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 921
    const-string/jumbo v2, "rawContactsToRemove"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 925
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 926
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, p7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    const-string/jumbo v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 929
    return-object v1
.end method

.method public static createJoinContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactId1"    # J
    .param p3, "contactId2"    # J
    .param p5, "contactWritable"    # Z
    .param p7, "callbackAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJZ",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 1371
    .local p6, "callbackActivity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1372
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v2, "joinContacts"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1373
    const-string/jumbo v2, "contactId1"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1374
    const-string/jumbo v2, "contactId2"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1375
    const-string/jumbo v2, "contactWritable"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1378
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1379
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, p7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1380
    const-string/jumbo v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1382
    return-object v1
.end method

.method public static createNewGroupIntent(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;Ljava/lang/String;[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "rawContactsToAdd"    # [J
    .param p5, "callbackAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            "Ljava/lang/String;",
            "[J",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 796
    .local p4, "callbackActivity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 797
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v2, "createGroup"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    const-string/jumbo v2, "accountType"

    iget-object v3, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    const-string/jumbo v2, "accountName"

    iget-object v3, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    const-string/jumbo v2, "dataSet"

    iget-object v3, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    const-string/jumbo v2, "groupLabel"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    const-string/jumbo v2, "rawContactsToAdd"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 806
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 807
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 808
    const-string/jumbo v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 810
    return-object v1
.end method

.method public static createNewRawContactIntent(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/contacts/common/model/account/AccountWithDataSet;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p4, "callbackAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p3, "callbackActivity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v1, Landroid/content/Intent;

    .line 282
    const-class v2, Lcom/android/contacts/ContactSaveService;

    .line 281
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v2, "newRawContact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    if-eqz p2, :cond_0

    .line 285
    const-string/jumbo v2, "accountName"

    iget-object v3, p2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string/jumbo v2, "accountType"

    iget-object v3, p2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string/jumbo v2, "dataSet"

    iget-object v3, p2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    :cond_0
    const-string/jumbo v2, "contentValues"

    .line 289
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 295
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string/jumbo v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 298
    return-object v1
.end method

.method private createRawContact(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 302
    const-string/jumbo v14, "accountName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "accountName":Ljava/lang/String;
    const-string/jumbo v14, "accountType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "accountType":Ljava/lang/String;
    const-string/jumbo v14, "dataSet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "dataSet":Ljava/lang/String;
    const-string/jumbo v14, "contentValues"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 306
    .local v12, "valueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const-string/jumbo v14, "callbackIntent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 308
    .local v3, "callbackIntent":Landroid/content/Intent;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v7, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v14, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 310
    const-string/jumbo v15, "account_name"

    .line 309
    invoke-virtual {v14, v15, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 311
    const-string/jumbo v15, "account_type"

    .line 309
    invoke-virtual {v14, v15, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 312
    const-string/jumbo v15, "data_set"

    .line 309
    invoke-virtual {v14, v15, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 316
    .local v11, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_0

    .line 317
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    .line 318
    .local v13, "values":Landroid/content/ContentValues;
    invoke-virtual {v13}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v14

    sget-object v15, Lcom/android/contacts/ContactSaveService;->ALLOWED_DATA_COLUMNS:Ljava/util/HashSet;

    invoke-interface {v14, v15}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 319
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    .line 320
    const-string/jumbo v15, "raw_contact_id"

    const/16 v16, 0x0

    .line 319
    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 325
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 328
    .local v9, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string/jumbo v14, "com.android.contacts"

    invoke-virtual {v9, v14, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 333
    .local v10, "results":[Landroid/content/ContentProviderResult;
    const/4 v14, 0x0

    aget-object v14, v10, v14

    iget-object v8, v14, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 334
    .local v8, "rawContactUri":Landroid/net/Uri;
    invoke-static {v9, v8}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 336
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 301
    return-void

    .line 329
    .end local v8    # "rawContactUri":Landroid/net/Uri;
    .end local v10    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v5

    .line 330
    .local v5, "e":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/RuntimeException;

    const-string/jumbo v15, "Failed to store new contact"

    invoke-direct {v14, v15, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
.end method

.method public static createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Lcom/android/contacts/common/model/RawContactDeltaList;
    .param p2, "saveModeExtraKey"    # Ljava/lang/String;
    .param p3, "saveMode"    # I
    .param p4, "isProfile"    # Z
    .param p6, "callbackAction"    # Ljava/lang/String;
    .param p7, "updatedPhotos"    # Landroid/os/Bundle;
    .param p8, "pbrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/contacts/common/model/RawContactDeltaList;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 352
    .local p5, "callbackActivity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v1, Landroid/content/Intent;

    .line 353
    const-class v2, Lcom/android/contacts/ContactSaveService;

    .line 352
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v2, "saveContact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 356
    const-string/jumbo v2, "saveIsProfile"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 357
    const-string/jumbo v2, "pbrIndex"

    invoke-virtual {v1, v2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    if-eqz p7, :cond_0

    .line 359
    const-string/jumbo v2, "updatedPhotos"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 362
    :cond_0
    if-eqz p5, :cond_1

    .line 366
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 367
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    invoke-virtual {v0, p6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string/jumbo v2, "callbackIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 371
    .end local v0    # "callbackIntent":Landroid/content/Intent;
    :cond_1
    return-object v1
.end method

.method public static createSetIceIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "value"    # Z

    .prologue
    .line 1065
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1066
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "setIceContact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1067
    const-string/jumbo v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1068
    const-string/jumbo v1, "iceContact"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1070
    return-object v0
.end method

.method public static createSetIceIntent(Landroid/content/Context;Ljava/util/ArrayList;Z)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 1079
    .local p1, "contactUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1080
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "setIceContactBatch"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1081
    const-string/jumbo v1, "contactUris"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1082
    const-string/jumbo v1, "iceContact"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1084
    return-object v0
.end method

.method public static createSetRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1230
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1231
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "setRingtone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1232
    const-string/jumbo v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1233
    const-string/jumbo v1, "customRingtone"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1235
    return-object v0
.end method

.method public static createSetSendToVoicemail(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "value"    # Z

    .prologue
    .line 1204
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1205
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "sendToVoicemail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1206
    const-string/jumbo v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1207
    const-string/jumbo v1, "sendToVoicemailFlag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1209
    return-object v0
.end method

.method public static createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "value"    # Z

    .prologue
    .line 1040
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1041
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "setStarred"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1042
    const-string/jumbo v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1043
    const-string/jumbo v1, "starred"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1045
    return-object v0
.end method

.method public static createSetStarredIntent(Landroid/content/Context;Ljava/util/ArrayList;Z)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 1053
    .local p1, "contactUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1054
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "setStarredBatch"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1055
    const-string/jumbo v1, "contactUris"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1056
    const-string/jumbo v1, "starred"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1058
    return-object v0
.end method

.method public static createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataId"    # J

    .prologue
    .line 1254
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1255
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "setSuperPrimary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1256
    const-string/jumbo v1, "dataId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1257
    return-object v0
.end method

.method public static createUpdateMedicalInfoIntent(Landroid/content/Context;Landroid/content/ContentValues;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1094
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1095
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "updateMedicalInformation"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    const-string/jumbo v1, "medicalInfoValues"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1098
    return-object v0
.end method

.method private deleteContact(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1322
    const-string/jumbo v7, "contactUri"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1323
    .local v1, "contactUri":Landroid/net/Uri;
    const-string/jumbo v7, "callbackIntent"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1324
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "isSimContact"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1325
    .local v4, "isSimContact":Z
    const/4 v6, 0x1

    .line 1327
    .local v6, "successfullyDeleted":Z
    if-eqz v4, :cond_0

    .line 1328
    if-eqz v0, :cond_0

    .line 1329
    const-string/jumbo v7, "deleteSimContactStarted"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1330
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 1334
    :cond_0
    if-eqz v1, :cond_5

    .line 1335
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;

    .line 1336
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 1335
    invoke-direct {v5, v7}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;-><init>(Landroid/content/Context;)V

    .line 1338
    .local v5, "mDeleteContactHelper":Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "raw_contact"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1340
    .local v3, "isRawContact":Z
    if-eqz v4, :cond_1

    .line 1341
    :try_start_0
    invoke-virtual {v5, v1, v3}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->deleteAdn(Landroid/net/Uri;Z)Z

    move-result v6

    .line 1344
    .end local v6    # "successfullyDeleted":Z
    :cond_1
    if-eqz v6, :cond_2

    .line 1346
    invoke-virtual {v5, v1, v3}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->delete(Landroid/net/Uri;Z)Z

    move-result v6

    .line 1347
    .local v6, "successfullyDeleted":Z
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isGawEnabled()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v3, :cond_4

    .line 1358
    .end local v3    # "isRawContact":Z
    .end local v5    # "mDeleteContactHelper":Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;
    .end local v6    # "successfullyDeleted":Z
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 1359
    const-string/jumbo v7, "deleteContactCompleted"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1360
    const-string/jumbo v7, "deleteContactSucceeded"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1361
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 1321
    :cond_3
    return-void

    .line 1348
    .restart local v3    # "isRawContact":Z
    .restart local v5    # "mDeleteContactHelper":Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;
    .restart local v6    # "successfullyDeleted":Z
    :cond_4
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/contacts/ContactSaveService;->notifyGawDeleteContact(Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1351
    .end local v6    # "successfullyDeleted":Z
    :catch_0
    move-exception v2

    .line 1352
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    sget-object v7, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Could not delete contact: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1355
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v3    # "isRawContact":Z
    .end local v5    # "mDeleteContactHelper":Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;
    .local v6, "successfullyDeleted":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private deleteGroup(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 885
    const-string/jumbo v2, "groupId"

    invoke-virtual {p1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 886
    .local v0, "groupId":J
    cmp-long v2, v0, v6

    if-nez v2, :cond_0

    .line 887
    sget-object v2, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Invalid arguments for deleteGroup request"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    return-void

    .line 891
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 893
    const v2, 0x7f09026d

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    .line 884
    :cond_1
    return-void
.end method

.method private deliverCallback(Landroid/content/Intent;)V
    .locals 2
    .param p1, "callbackIntent"    # Landroid/content/Intent;

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/ContactSaveService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/ContactSaveService$2;-><init>(Lcom/android/contacts/ContactSaveService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1447
    return-void
.end method

.method private getInsertedRawContactId(Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J
    .locals 6
    .param p2, "results"    # [Landroid/content/ContentProviderResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            ")J"
        }
    .end annotation

    .prologue
    .line 769
    .local p1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 770
    .local v0, "diffSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 771
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 772
    .local v2, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 773
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    .line 774
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v4

    .line 773
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 772
    if-eqz v3, :cond_0

    .line 775
    aget-object v3, p2, v1

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    return-wide v4

    .line 770
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 778
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    :cond_1
    const-wide/16 v4, -0x1

    return-wide v4
.end method

.method private getRawContactId(Lcom/android/contacts/common/model/RawContactDeltaList;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J
    .locals 4
    .param p1, "state"    # Lcom/android/contacts/common/model/RawContactDeltaList;
    .param p3, "results"    # [Landroid/content/ContentProviderResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/RawContactDeltaList;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            ")J"
        }
    .end annotation

    .prologue
    .line 755
    .local p2, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Lcom/android/contacts/common/model/RawContactDeltaList;->findRawContactId()J

    move-result-wide v0

    .line 756
    .local v0, "existingRawContactId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 757
    return-wide v0

    .line 760
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/ContactSaveService;->getInsertedRawContactId(Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J

    move-result-wide v2

    return-wide v2
.end method

.method private isInSpeedDial(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "dataIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 672
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    :cond_0
    return v10

    .line 673
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 674
    .local v7, "phoneNumberList":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/common/provider/SpeedDialContract;->CONTENT_URI:Landroid/net/Uri;

    .line 675
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 676
    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 677
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data_id IN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 674
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 678
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-lez v0, :cond_3

    move v0, v9

    .line 679
    :goto_0
    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    if-eqz v8, :cond_4

    throw v8

    :cond_3
    move v0, v10

    .line 678
    goto :goto_0

    .line 679
    :catch_0
    move-exception v8

    goto :goto_1

    .line 678
    :cond_4
    return v0

    .line 679
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_2
    if-eqz v6, :cond_5

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_3
    if-eqz v1, :cond_7

    throw v1

    :catch_2
    move-exception v2

    if-nez v1, :cond_6

    move-object v1, v2

    goto :goto_3

    :cond_6
    if-eq v1, v2, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_2
.end method

.method private isPhoneChangedToEmergencyNumber(Lcom/android/contacts/common/model/RawContactDeltaList;)Z
    .locals 8
    .param p1, "state"    # Lcom/android/contacts/common/model/RawContactDeltaList;

    .prologue
    .line 640
    if-nez p1, :cond_0

    .line 641
    const/4 v7, 0x0

    return v7

    .line 643
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 644
    .local v0, "dataIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "valuesDeltaList$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/RawContactDelta;

    .line 646
    .local v4, "valuesDeltaList":Lcom/android/contacts/common/model/RawContactDelta;
    const-string/jumbo v7, "vnd.android.cursor.item/phone_v2"

    .line 645
    invoke-virtual {v4, v7}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 647
    .local v6, "valuesDeltaListByMimeType":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v6, :cond_1

    .line 650
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "valuesDelta$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    .line 651
    .local v2, "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    if-eqz v2, :cond_2

    .line 654
    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 655
    .local v1, "phoneNumber":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 656
    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 660
    .end local v1    # "phoneNumber":Ljava/lang/String;
    .end local v2    # "valuesDelta":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "valuesDelta$iterator":Ljava/util/Iterator;
    .end local v4    # "valuesDeltaList":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v6    # "valuesDeltaListByMimeType":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactSaveService;->isInSpeedDial(Ljava/util/List;)Z

    move-result v7

    return v7
.end method

.method private joinContacts(Landroid/content/Intent;)V
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1386
    const-string/jumbo v18, "contactId1"

    const-wide/16 v20, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1387
    .local v6, "contactId1":J
    const-string/jumbo v18, "contactId2"

    const-wide/16 v20, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1388
    .local v8, "contactId2":J
    const-wide/16 v18, -0x1

    cmp-long v18, v6, v18

    if-eqz v18, :cond_0

    const-wide/16 v18, -0x1

    cmp-long v18, v8, v18

    if-nez v18, :cond_1

    .line 1389
    :cond_0
    sget-object v18, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "Invalid arguments for joinContacts request"

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    return-void

    .line 1393
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 1394
    .local v14, "resolver":Landroid/content/ContentResolver;
    const/4 v13, 0x0

    .line 1395
    .local v13, "rawContactIds":[J
    sget-object v15, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_UNKNOWN:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    .line 1397
    .local v15, "result":Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;
    :try_start_0
    invoke-static {v14, v6, v7, v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;->joinAggregate(Landroid/content/ContentResolver;JJ)[J

    move-result-object v13

    .line 1398
    .local v13, "rawContactIds":[J
    sget-object v15, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->SUCCESS:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$TooManyLinkException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1416
    .end local v13    # "rawContactIds":[J
    :goto_0
    const-string/jumbo v18, "callbackIntent"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 1418
    .local v4, "callbackIntent":Landroid/content/Intent;
    if-eqz v13, :cond_3

    .line 1420
    sget-object v18, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/16 v19, 0x0

    aget-wide v20, v13, v19

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 1419
    move-object/from16 v0, v18

    invoke-static {v14, v0}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v16

    .line 1421
    .local v16, "uri":Landroid/net/Uri;
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1422
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->isVideoCallingGroupSupported()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1423
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getVideoGroupServiceUpdateCurrentStateIntent()Landroid/content/Intent;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactSaveService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1426
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x0

    aget-wide v20, v13, v19

    .line 1425
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->newInstance(Landroid/content/Context;J)Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    move-result-object v17

    .line 1427
    .local v17, "wrapper":Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;
    const-string/jumbo v18, "contactInfo"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1429
    .end local v16    # "uri":Landroid/net/Uri;
    .end local v17    # "wrapper":Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;
    :cond_3
    const-string/jumbo v18, "aggregationResult"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1431
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 1385
    return-void

    .line 1411
    .end local v4    # "callbackIntent":Landroid/content/Intent;
    :catch_0
    move-exception v10

    .line 1412
    .local v10, "e":Landroid/database/sqlite/SQLiteFullException;
    sget-object v18, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "sql disk full: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    sget-object v15, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_DISKFULL:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    goto/16 :goto_0

    .line 1407
    .end local v10    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v12

    .line 1409
    .local v12, "e":Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$TooManyLinkException;
    sget-object v18, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Trying to link too many (raw) contacts: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$TooManyLinkException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    sget-object v15, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_TOOMANYLINK:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    goto/16 :goto_0

    .line 1403
    .end local v12    # "e":Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$TooManyLinkException;
    :catch_2
    move-exception v5

    .line 1405
    .local v5, "e":Landroid/content/OperationApplicationException;
    sget-object v18, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Version consistency failed, re-parenting: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    sget-object v15, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_LINKERROR:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    goto/16 :goto_0

    .line 1399
    .end local v5    # "e":Landroid/content/OperationApplicationException;
    :catch_3
    move-exception v11

    .line 1401
    .local v11, "e":Landroid/os/RemoteException;
    sget-object v18, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "Problem persisting contacts aggregation."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v11}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1402
    sget-object v15, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;->FAILURE_LINKERROR:Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    goto/16 :goto_0
.end method

.method private notifyGawDeleteContact(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 1479
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/model/DeleteContactHelper;->solveId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 1480
    .local v0, "contactId":J
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->removeContact(J)V

    .line 1478
    return-void
.end method

.method private notifyGawSaveContact(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 1471
    if-nez p1, :cond_0

    .line 1472
    return-void

    .line 1474
    :cond_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 1475
    .local v0, "contactId":J
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->createOrUpdateContactInitials(J)V

    .line 1470
    return-void
.end method

.method public static registerListener(Lcom/android/contacts/ContactSaveService$Listener;)V
    .locals 3
    .param p0, "listener"    # Lcom/android/contacts/ContactSaveService$Listener;

    .prologue
    .line 205
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Only activities can be registered to receive callback from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    sget-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 204
    return-void
.end method

.method public static removeMembersFromGroup(Landroid/content/ContentResolver;[JJ)V
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "rawContactsToRemove"    # [J
    .param p2, "groupId"    # J

    .prologue
    const/4 v3, 0x0

    .line 1022
    if-nez p1, :cond_0

    .line 1023
    return-void

    .line 1025
    :cond_0
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-wide v0, p1, v2

    .line 1029
    .local v0, "rawContactId":J
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v6, "raw_contact_id=? AND mimetype=? AND data1=?"

    .line 1031
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 1032
    const-string/jumbo v8, "vnd.android.cursor.item/group_membership"

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 1029
    invoke-virtual {p0, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1025
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1021
    .end local v0    # "rawContactId":J
    :cond_1
    return-void
.end method

.method private renameGroup(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    .line 856
    const-string/jumbo v6, "groupId"

    invoke-virtual {p1, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 857
    .local v2, "groupId":J
    const-string/jumbo v6, "groupLabel"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 859
    .local v4, "label":Ljava/lang/String;
    cmp-long v6, v2, v8

    if-nez v6, :cond_0

    .line 860
    sget-object v6, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Invalid arguments for renameGroup request"

    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    return-void

    .line 864
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 865
    .local v5, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "title"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 867
    .local v1, "groupUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v1, v5, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 869
    const-string/jumbo v6, "callbackIntent"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 870
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 871
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 855
    return-void
.end method

.method private reportSaveStatus(Landroid/content/Intent;Landroid/net/Uri;ZZ)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "succeeded"    # Z
    .param p4, "isRemovedFromSpeedDial"    # Z

    .prologue
    .line 718
    if-eqz p3, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isGawEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    invoke-direct {p0, p2}, Lcom/android/contacts/ContactSaveService;->notifyGawSaveContact(Landroid/net/Uri;)V

    .line 722
    :cond_0
    const-string/jumbo v1, "callbackIntent"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 723
    .local v0, "callbackIntent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 724
    const-string/jumbo v1, "isContactRemovedFromSpeedDial"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 726
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/ContactSaveService;->callVideoCallService(Landroid/os/Bundle;)V

    .line 727
    if-eqz p3, :cond_1

    .line 731
    const-string/jumbo v1, "saveSucceeded"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 733
    :cond_1
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 735
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 717
    return-void
.end method

.method private saveContact(Landroid/content/Intent;)V
    .locals 70
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 375
    const-string/jumbo v7, "state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v60

    check-cast v60, Lcom/android/contacts/common/model/RawContactDeltaList;

    .line 376
    .local v60, "state":Lcom/android/contacts/common/model/RawContactDeltaList;
    const-string/jumbo v7, "saveIsProfile"

    const/16 v66, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v66

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v36

    .line 377
    .local v36, "isProfile":Z
    const-string/jumbo v7, "updatedPhotos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v65

    check-cast v65, Landroid/os/Bundle;

    .line 379
    .local v65, "updatedPhotos":Landroid/os/Bundle;
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v15

    .line 381
    .local v15, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    const/4 v14, 0x0

    .line 382
    .local v14, "sourceId":Ljava/lang/String;
    const/16 v35, 0x0

    .line 383
    .local v35, "isNewAdnContact":Z
    const/4 v7, 0x0

    move-object/from16 v0, v60

    invoke-virtual {v0, v7}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/common/model/RawContactDelta;

    .line 384
    .local v27, "entityDelta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v19

    .line 385
    .local v19, "config":Lcom/sonyericsson/android/socialphonebook/Configuration;
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isAddingEmergencyNumberInSpeedDialEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 387
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactSaveService;->isPhoneChangedToEmergencyNumber(Lcom/android/contacts/common/model/RawContactDeltaList;)Z

    move-result v59

    .line 388
    :goto_0
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType(Lcom/android/contacts/common/model/AccountTypeManager;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v64

    .line 389
    .local v64, "type":Lcom/android/contacts/common/model/account/AccountType;
    move-object/from16 v0, v64

    iget-object v7, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isAdnAccount(Ljava/lang/String;)Z

    move-result v34

    .line 391
    .local v34, "isAdnContact":Z
    if-eqz v34, :cond_b

    .line 392
    const/16 v17, 0x0

    .line 393
    .local v17, "adnOperationSuccess":Z
    const-string/jumbo v7, "pbrIndex"

    .line 394
    const/16 v66, -0x1

    .line 393
    move-object/from16 v0, p1

    move/from16 v1, v66

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v50

    .line 395
    .local v50, "pbrIndex":I
    const/4 v7, -0x1

    move/from16 v0, v50

    if-ne v0, v7, :cond_1

    .line 396
    const/4 v7, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v66

    move/from16 v3, v67

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/contacts/ContactSaveService;->reportSaveStatus(Landroid/content/Intent;Landroid/net/Uri;ZZ)V

    .line 397
    return-void

    .line 385
    .end local v17    # "adnOperationSuccess":Z
    .end local v34    # "isAdnContact":Z
    .end local v50    # "pbrIndex":I
    .end local v64    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :cond_0
    const/16 v59, 0x0

    .local v59, "shouldContactBeRemovedFromSpeedDial":Z
    goto :goto_0

    .line 401
    .end local v59    # "shouldContactBeRemovedFromSpeedDial":Z
    .restart local v17    # "adnOperationSuccess":Z
    .restart local v34    # "isAdnContact":Z
    .restart local v50    # "pbrIndex":I
    .restart local v64    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :cond_1
    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v28

    .line 402
    .local v28, "entityValues":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v7, "aggregation_mode"

    const/16 v66, 0x3

    move-object/from16 v0, v28

    move/from16 v1, v66

    invoke-virtual {v0, v7, v1}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 405
    const-string/jumbo v7, "sourceid"

    const/16 v66, -0x1

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v66

    move-object/from16 v0, v28

    move-object/from16 v1, v66

    invoke-virtual {v0, v7, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 406
    .local v14, "sourceId":Ljava/lang/String;
    sget-object v7, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v67, "sourceId: "

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, v66

    invoke-static {v7, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string/jumbo v7, "-1"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    .line 409
    .local v35, "isNewAdnContact":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 410
    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v66, v0

    .line 409
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, v66

    invoke-static {v7, v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getInstance(Landroid/content/Context;ZLjava/lang/String;)Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;

    move-result-object v16

    .line 411
    .local v16, "adnHelper":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    if-nez v35, :cond_9

    .line 412
    move-object/from16 v0, v16

    move/from16 v1, v50

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v14}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getIccProviderUpdateValues(ILcom/android/contacts/common/model/RawContactDelta;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v31

    .line 414
    .local v31, "iccValues":Landroid/content/ContentValues;
    if-eqz v31, :cond_7

    .line 415
    const/16 v56, 0x0

    .line 418
    .local v56, "result":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 417
    invoke-static {v7, v14}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getSIMContentsFromId(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v49

    .line 420
    .local v49, "oldValues":Landroid/content/ContentValues;
    if-eqz v49, :cond_6

    .line 421
    const-string/jumbo v7, "tag"

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 422
    .local v48, "oldTag":Ljava/lang/String;
    const-string/jumbo v7, "number"

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 423
    .local v47, "oldNumber":Ljava/lang/String;
    const-string/jumbo v7, "emails"

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 424
    .local v46, "oldEmails":Ljava/lang/String;
    const-string/jumbo v7, "anr"

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 426
    .local v45, "oldAnrs":Ljava/lang/String;
    if-eqz v48, :cond_2

    .line 427
    const-string/jumbo v7, "tag"

    move-object/from16 v0, v31

    move-object/from16 v1, v48

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string/jumbo v7, "newTag"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    .line 429
    const-string/jumbo v7, "newTag"

    move-object/from16 v0, v31

    move-object/from16 v1, v48

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_2
    if-eqz v47, :cond_3

    .line 433
    const-string/jumbo v7, "number"

    move-object/from16 v0, v31

    move-object/from16 v1, v47

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string/jumbo v7, "newNumber"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    .line 435
    const-string/jumbo v7, "newNumber"

    move-object/from16 v0, v31

    move-object/from16 v1, v47

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_3
    if-eqz v46, :cond_4

    .line 439
    const-string/jumbo v7, "emails"

    move-object/from16 v0, v31

    move-object/from16 v1, v46

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string/jumbo v7, "newEmails"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    .line 441
    const-string/jumbo v7, "newEmails"

    move-object/from16 v0, v31

    move-object/from16 v1, v46

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_4
    if-eqz v45, :cond_5

    .line 445
    const-string/jumbo v7, "anr"

    move-object/from16 v0, v31

    move-object/from16 v1, v45

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string/jumbo v7, "newAnr"

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    .line 447
    const-string/jumbo v7, "newAnr"

    move-object/from16 v0, v31

    move-object/from16 v1, v45

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 451
    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getSimUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v66

    .line 453
    const/16 v67, 0x0

    .line 454
    const/16 v68, 0x0

    .line 450
    move-object/from16 v0, v66

    move-object/from16 v1, v31

    move-object/from16 v2, v67

    move-object/from16 v3, v68

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v56

    .line 459
    .end local v45    # "oldAnrs":Ljava/lang/String;
    .end local v46    # "oldEmails":Ljava/lang/String;
    .end local v47    # "oldNumber":Ljava/lang/String;
    .end local v48    # "oldTag":Ljava/lang/String;
    .end local v49    # "oldValues":Landroid/content/ContentValues;
    :cond_6
    :goto_1
    if-eqz v56, :cond_8

    const/16 v17, 0x1

    .line 484
    .end local v56    # "result":I
    :cond_7
    :goto_2
    if-nez v17, :cond_b

    .line 485
    const/4 v7, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v66

    move/from16 v3, v67

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/contacts/ContactSaveService;->reportSaveStatus(Landroid/content/Intent;Landroid/net/Uri;ZZ)V

    .line 486
    return-void

    .line 456
    .restart local v56    # "result":I
    :catch_0
    move-exception v26

    .line 457
    .local v26, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v66, "Update to IccProvider error"

    move-object/from16 v0, v66

    move-object/from16 v1, v26

    invoke-static {v7, v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 459
    .end local v26    # "e":Ljava/lang/Exception;
    :cond_8
    const/16 v17, 0x0

    goto :goto_2

    .line 462
    .end local v31    # "iccValues":Landroid/content/ContentValues;
    .end local v56    # "result":I
    :cond_9
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->getInstance()Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    move-result-object v6

    .line 463
    const v7, 0x7f0901c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/contacts/ContactSaveService;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    .line 464
    const-string/jumbo v9, "new_sim_contact_event_sent"

    const-wide/16 v10, 0x0

    .line 462
    invoke-virtual/range {v6 .. v11}, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;->pushOneTimeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 465
    move-object/from16 v0, v16

    move/from16 v1, v50

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getIccProviderInsertValues(ILcom/android/contacts/common/model/RawContactDelta;)Landroid/content/ContentValues;

    move-result-object v31

    .line 467
    .restart local v31    # "iccValues":Landroid/content/ContentValues;
    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isAllEmpty(Landroid/content/ContentValues;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 468
    const-wide/16 v42, -0x1

    .line 470
    .local v42, "newSourceId":J
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 471
    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getSimUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v66

    .line 470
    move-object/from16 v0, v66

    move-object/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v41

    .line 472
    .local v41, "newIccUri":Landroid/net/Uri;
    invoke-virtual/range {v41 .. v41}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v42

    .line 476
    .end local v41    # "newIccUri":Landroid/net/Uri;
    :goto_3
    sget-object v7, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v67, "newSourceId: "

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, v66

    invoke-static {v7, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-static/range {v42 .. v43}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    .line 479
    const-string/jumbo v7, "sourceid"

    move-object/from16 v0, v28

    invoke-virtual {v0, v7, v14}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-wide/16 v66, -0x1

    cmp-long v7, v42, v66

    if-eqz v7, :cond_a

    const/16 v17, 0x1

    goto/16 :goto_2

    .line 473
    :catch_1
    move-exception v26

    .line 474
    .restart local v26    # "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v66, "Insert to IccProvider error"

    move-object/from16 v0, v66

    invoke-static {v7, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 480
    .end local v26    # "e":Ljava/lang/Exception;
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 491
    .end local v14    # "sourceId":Ljava/lang/String;
    .end local v16    # "adnHelper":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .end local v17    # "adnOperationSuccess":Z
    .end local v28    # "entityValues":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v31    # "iccValues":Landroid/content/ContentValues;
    .end local v35    # "isNewAdnContact":Z
    .end local v42    # "newSourceId":J
    .end local v50    # "pbrIndex":I
    :cond_b
    move-object/from16 v0, v60

    invoke-static {v0, v15}, Lcom/android/contacts/common/model/RawContactModifier;->trimEmpty(Lcom/android/contacts/common/model/RawContactDeltaList;Lcom/android/contacts/common/model/AccountTypeManager;)V

    .line 493
    const/16 v40, 0x0

    .line 495
    .local v40, "lookupUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 496
    .local v6, "resolver":Landroid/content/ContentResolver;
    const/16 v61, 0x0

    .line 499
    .local v61, "succeeded":Z
    const-wide/16 v32, -0x1

    .line 502
    .local v32, "insertedRawContactId":J
    const/16 v62, 0x0

    .local v62, "tries":I
    move/from16 v63, v62

    .line 503
    .end local v40    # "lookupUri":Landroid/net/Uri;
    .end local v62    # "tries":I
    .local v63, "tries":I
    :goto_4
    add-int/lit8 v62, v63, 0x1

    .end local v63    # "tries":I
    .restart local v62    # "tries":I
    const/4 v7, 0x3

    move/from16 v0, v63

    if-ge v0, v7, :cond_d

    .line 506
    :try_start_2
    invoke-virtual/range {v60 .. v60}, Lcom/android/contacts/common/model/RawContactDeltaList;->buildDiff()Ljava/util/ArrayList;

    move-result-object v23

    .line 514
    .local v23, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v57, 0x0

    .line 515
    .local v57, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c

    .line 516
    const-string/jumbo v7, "com.android.contacts"

    move-object/from16 v0, v23

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v57

    .line 519
    .end local v57    # "results":[Landroid/content/ContentProviderResult;
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v23

    move-object/from16 v3, v57

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->getRawContactId(Lcom/android/contacts/common/model/RawContactDeltaList;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J

    move-result-wide v52

    .line 520
    .local v52, "rawContactId":J
    const-wide/16 v66, -0x1

    cmp-long v7, v52, v66

    if-nez v7, :cond_f

    .line 521
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v66, "Could not determine RawContact ID after save"

    move-object/from16 v0, v66

    invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_3

    .line 567
    .end local v23    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v52    # "rawContactId":J
    :catch_2
    move-exception v25

    .line 569
    .local v25, "e":Landroid/os/RemoteException;
    sget-object v7, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v66, "Problem persisting user edits"

    move-object/from16 v0, v66

    move-object/from16 v1, v25

    invoke-static {v7, v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 612
    .end local v25    # "e":Landroid/os/RemoteException;
    :cond_d
    :goto_5
    if-eqz v65, :cond_1b

    .line 613
    invoke-virtual/range {v65 .. v65}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .local v38, "key$iterator":Ljava/util/Iterator;
    :cond_e
    :goto_6
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 614
    .local v37, "key":Ljava/lang/String;
    move-object/from16 v0, v65

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v51

    check-cast v51, Landroid/net/Uri;

    .line 615
    .local v51, "photoFilePath":Landroid/net/Uri;
    invoke-static/range {v37 .. v37}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v52

    .line 619
    .restart local v52    # "rawContactId":J
    const-wide/16 v66, 0x0

    cmp-long v7, v52, v66

    if-gez v7, :cond_1a

    .line 620
    move-wide/from16 v52, v32

    .line 621
    const-wide/16 v66, -0x1

    cmp-long v7, v52, v66

    if-nez v7, :cond_1a

    .line 622
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 623
    const-string/jumbo v66, "Could not determine RawContact ID for image insertion"

    .line 622
    move-object/from16 v0, v66

    invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 525
    .end local v37    # "key":Ljava/lang/String;
    .end local v38    # "key$iterator":Ljava/util/Iterator;
    .end local v51    # "photoFilePath":Landroid/net/Uri;
    .restart local v23    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_f
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v57

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ContactSaveService;->getInsertedRawContactId(Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J

    move-result-wide v32

    .line 526
    if-eqz v36, :cond_15

    .line 530
    sget-object v7, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 531
    const/16 v66, 0x2

    move/from16 v0, v66

    new-array v8, v0, [Ljava/lang/String;

    const-string/jumbo v66, "_id"

    const/16 v67, 0x0

    aput-object v66, v8, v67

    const-string/jumbo v66, "lookup"

    const/16 v67, 0x1

    aput-object v66, v8, v67

    .line 532
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 530
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v18

    .line 533
    .local v18, "c":Landroid/database/Cursor;
    if-eqz v18, :cond_11

    .line 535
    :try_start_4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 536
    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 537
    .local v8, "contactId":J
    const/4 v7, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 538
    .local v39, "lookupKey":Ljava/lang/String;
    move-object/from16 v0, v39

    invoke-static {v8, v9, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v40

    .line 541
    .end local v8    # "contactId":J
    .end local v39    # "lookupKey":Ljava/lang/String;
    :cond_10
    :try_start_5
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 549
    .end local v18    # "c":Landroid/database/Cursor;
    :cond_11
    :goto_7
    sget-object v7, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v67, "Saved contact. New URI: "

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, v66

    invoke-static {v7, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-wide/16 v66, 0x0

    cmp-long v7, v32, v66

    if-eqz v7, :cond_12

    .line 553
    const/16 v61, 0x1

    .line 557
    :cond_12
    if-eqz v34, :cond_d

    if-eqz v35, :cond_d

    if-eqz v40, :cond_d

    .line 558
    invoke-static/range {v40 .. v40}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 559
    .restart local v8    # "contactId":J
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v23

    move-object/from16 v3, v57

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->getRawContactId(Lcom/android/contacts/common/model/RawContactDeltaList;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J

    move-result-wide v10

    .line 560
    .local v10, "newRawContactId":J
    move-object/from16 v0, v64

    iget-object v12, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 561
    .local v12, "accountType":Ljava/lang/String;
    invoke-static {v12}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->getSimAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 562
    .local v13, "accountName":Ljava/lang/String;
    invoke-static/range {v8 .. v14}, Lcom/sonyericsson/android/socialphonebook/model/AdnContactsCollector;->updateAdnContactsNow(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_5

    .line 572
    .end local v8    # "contactId":J
    .end local v10    # "newRawContactId":J
    .end local v12    # "accountType":Ljava/lang/String;
    .end local v13    # "accountName":Ljava/lang/String;
    .end local v23    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v52    # "rawContactId":J
    :catch_3
    move-exception v24

    .line 574
    .local v24, "e":Landroid/content/OperationApplicationException;
    sget-object v7, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v67, "Version consistency failed, re-parenting: "

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v24 .. v24}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, v66

    invoke-static {v7, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    new-instance v58, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "_id IN("

    move-object/from16 v0, v58

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 576
    .local v58, "sb":Ljava/lang/StringBuilder;
    const/16 v29, 0x1

    .line 577
    .local v29, "first":Z
    invoke-virtual/range {v60 .. v60}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v20

    .line 578
    .local v20, "count":I
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_8
    move/from16 v0, v30

    move/from16 v1, v20

    if-ge v0, v1, :cond_16

    .line 579
    move-object/from16 v0, v60

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDeltaList;->getRawContactId(I)Ljava/lang/Long;

    move-result-object v54

    .line 580
    .local v54, "rawContactId":Ljava/lang/Long;
    if-eqz v54, :cond_14

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Long;->longValue()J

    move-result-wide v66

    const-wide/16 v68, -0x1

    cmp-long v7, v66, v68

    if-eqz v7, :cond_14

    .line 581
    if-nez v29, :cond_13

    .line 582
    const/16 v7, 0x2c

    move-object/from16 v0, v58

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 584
    :cond_13
    move-object/from16 v0, v58

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 585
    const/16 v29, 0x0

    .line 578
    :cond_14
    add-int/lit8 v30, v30, 0x1

    goto :goto_8

    .line 540
    .end local v20    # "count":I
    .end local v24    # "e":Landroid/content/OperationApplicationException;
    .end local v29    # "first":Z
    .end local v30    # "i":I
    .end local v54    # "rawContactId":Ljava/lang/Long;
    .end local v58    # "sb":Ljava/lang/StringBuilder;
    .restart local v18    # "c":Landroid/database/Cursor;
    .restart local v23    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v52    # "rawContactId":J
    :catchall_0
    move-exception v7

    .line 541
    :try_start_6
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 540
    throw v7

    .line 545
    .end local v18    # "c":Landroid/database/Cursor;
    :cond_15
    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v52

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v55

    .line 547
    .local v55, "rawContactUri":Landroid/net/Uri;
    move-object/from16 v0, v55

    invoke-static {v6, v0}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v40

    .local v40, "lookupUri":Landroid/net/Uri;
    goto/16 :goto_7

    .line 588
    .end local v23    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v40    # "lookupUri":Landroid/net/Uri;
    .end local v52    # "rawContactId":J
    .end local v55    # "rawContactUri":Landroid/net/Uri;
    .restart local v20    # "count":I
    .restart local v24    # "e":Landroid/content/OperationApplicationException;
    .restart local v29    # "first":Z
    .restart local v30    # "i":I
    .restart local v58    # "sb":Ljava/lang/StringBuilder;
    :cond_16
    const-string/jumbo v7, ")"

    move-object/from16 v0, v58

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    if-eqz v29, :cond_17

    .line 591
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v66, "Version consistency failed for a new contact"

    move-object/from16 v0, v66

    invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 595
    :cond_17
    if-eqz v36, :cond_18

    .line 596
    sget-object v7, Landroid/provider/ContactsContract$RawContactsEntity;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    .line 598
    :goto_9
    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    const/16 v67, 0x0

    const/16 v68, 0x0

    .line 594
    move-object/from16 v0, v66

    move-object/from16 v1, v67

    move-object/from16 v2, v68

    invoke-static {v7, v6, v0, v1, v2}, Lcom/android/contacts/common/model/RawContactDeltaList;->fromQuery(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/RawContactDeltaList;

    move-result-object v44

    .line 599
    .local v44, "newState":Lcom/android/contacts/common/model/RawContactDeltaList;
    move-object/from16 v0, v44

    move-object/from16 v1, v60

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/RawContactDeltaList;->mergeAfter(Lcom/android/contacts/common/model/RawContactDeltaList;Lcom/android/contacts/common/model/RawContactDeltaList;)Lcom/android/contacts/common/model/RawContactDeltaList;

    move-result-object v60

    .line 602
    if-eqz v36, :cond_19

    .line 603
    invoke-interface/range {v60 .. v60}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "delta$iterator":Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/contacts/common/model/RawContactDelta;

    .line 604
    .local v21, "delta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/common/model/RawContactDelta;->setProfileQueryUri()V

    goto :goto_a

    .line 597
    .end local v21    # "delta":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v22    # "delta$iterator":Ljava/util/Iterator;
    .end local v44    # "newState":Lcom/android/contacts/common/model/RawContactDeltaList;
    :cond_18
    sget-object v7, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_9

    .restart local v44    # "newState":Lcom/android/contacts/common/model/RawContactDeltaList;
    :cond_19
    move/from16 v63, v62

    .end local v62    # "tries":I
    .restart local v63    # "tries":I
    goto/16 :goto_4

    .line 627
    .end local v20    # "count":I
    .end local v24    # "e":Landroid/content/OperationApplicationException;
    .end local v29    # "first":Z
    .end local v30    # "i":I
    .end local v44    # "newState":Lcom/android/contacts/common/model/RawContactDeltaList;
    .end local v58    # "sb":Ljava/lang/StringBuilder;
    .end local v63    # "tries":I
    .restart local v37    # "key":Ljava/lang/String;
    .restart local v38    # "key$iterator":Ljava/util/Iterator;
    .restart local v51    # "photoFilePath":Landroid/net/Uri;
    .restart local v52    # "rawContactId":J
    .restart local v62    # "tries":I
    :cond_1a
    move-object/from16 v0, p0

    move-wide/from16 v1, v52

    move-object/from16 v3, v51

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->saveUpdatedPhoto(JLandroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_e

    const/16 v61, 0x0

    goto/16 :goto_6

    .line 631
    .end local v37    # "key":Ljava/lang/String;
    .end local v38    # "key$iterator":Ljava/util/Iterator;
    .end local v51    # "photoFilePath":Landroid/net/Uri;
    .end local v52    # "rawContactId":J
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v40

    move/from16 v3, v61

    move/from16 v4, v59

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/ContactSaveService;->reportSaveStatus(Landroid/content/Intent;Landroid/net/Uri;ZZ)V

    .line 374
    return-void
.end method

.method private saveUpdatedPhoto(JLandroid/net/Uri;)Z
    .locals 3
    .param p1, "rawContactId"    # J
    .param p3, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 744
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 745
    const-string/jumbo v2, "display_photo"

    .line 743
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 746
    .local v0, "outputUri":Landroid/net/Uri;
    const/4 v1, 0x1

    invoke-static {p0, p3, v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->savePhotoFromUriToUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Z)Z

    move-result v1

    return v1
.end method

.method private setIce(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1139
    const-string/jumbo v3, "contactUri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1140
    .local v0, "contactUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 1141
    sget-object v3, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Invalid arguments for setIce request"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    return-void

    .line 1145
    :cond_0
    const-string/jumbo v3, "iceContact"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1146
    .local v1, "value":Z
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1147
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "ice"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1148
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1149
    sget-object v3, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Cannot set/unset contact as ICE!"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    :cond_1
    return-void
.end method

.method private setIceBatch(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 1154
    const-string/jumbo v11, "contactUris"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1155
    .local v0, "contactUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-nez v0, :cond_0

    .line 1156
    sget-object v10, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Invalid arguments for setIce request"

    invoke-static {v10, v11}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    return-void

    .line 1160
    :cond_0
    const-string/jumbo v11, "iceContact"

    invoke-virtual {p1, v11, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 1161
    .local v9, "value":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1163
    .local v4, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "uri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 1164
    .local v7, "uri":Landroid/net/Uri;
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 1165
    const-string/jumbo v12, "ice"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 1164
    invoke-virtual {v11, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1170
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "com.android.contacts"

    invoke-virtual {v11, v12, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    .line 1174
    .local v6, "results":[Landroid/content/ContentProviderResult;
    array-length v11, v6

    :goto_1
    if-ge v10, v11, :cond_3

    aget-object v5, v6, v10

    .line 1175
    .local v5, "result":Landroid/content/ContentProviderResult;
    iget-object v12, v5, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    if-eqz v12, :cond_2

    iget-object v12, v5, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v12, :cond_2

    .line 1176
    sget-object v12, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Cannot set/unset contact as ICE!"

    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1174
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1184
    .end local v5    # "result":Landroid/content/ContentProviderResult;
    .end local v6    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v3

    .line 1185
    .local v3, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1153
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void

    .line 1182
    :catch_1
    move-exception v1

    .line 1183
    .local v1, "e":Landroid/content/OperationApplicationException;
    sget-object v10, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Cannot add ICE contacts! Failed to communicate with a remote provider."

    invoke-static {v10, v11, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1180
    .end local v1    # "e":Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v2

    .line 1181
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v10, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Cannot add ICE contacts! Application fails."

    invoke-static {v10, v11, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private setRingtone(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1239
    const-string/jumbo v3, "contactUri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1240
    .local v0, "contactUri":Landroid/net/Uri;
    const-string/jumbo v3, "customRingtone"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1241
    .local v1, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1242
    sget-object v3, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Invalid arguments for setRingtone"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    return-void

    .line 1245
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1246
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "custom_ringtone"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1238
    return-void
.end method

.method private setSendToVoicemail(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 1213
    const-string/jumbo v3, "contactUri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1214
    .local v0, "contactUri":Landroid/net/Uri;
    const-string/jumbo v3, "sendToVoicemailFlag"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1215
    .local v1, "value":Z
    if-nez v0, :cond_0

    .line 1216
    sget-object v3, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Invalid arguments for setRedirectToVoicemail"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    return-void

    .line 1220
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1221
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "send_to_voicemail"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1222
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1212
    return-void
.end method

.method private setStarred(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 1102
    const-string/jumbo v3, "contactUri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1103
    .local v0, "contactUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 1104
    sget-object v3, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Invalid arguments for setStarred request"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    return-void

    .line 1108
    :cond_0
    const-string/jumbo v3, "starred"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1109
    .local v1, "value":Z
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1110
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "starred"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1111
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1101
    return-void
.end method

.method private setStarredBatch(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1115
    const-string/jumbo v7, "contactUris"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1116
    .local v0, "contactUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-nez v0, :cond_0

    .line 1117
    sget-object v7, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Invalid arguments for setStarred request"

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    return-void

    .line 1121
    :cond_0
    const-string/jumbo v7, "starred"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 1122
    .local v6, "value":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1124
    .local v3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "uri$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 1125
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 1126
    const-string/jumbo v8, "starred"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 1125
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1130
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "com.android.contacts"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    :goto_1
    return-void

    .line 1133
    :catch_0
    move-exception v1

    .line 1134
    .local v1, "e":Landroid/content/OperationApplicationException;
    sget-object v7, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Cannot add favorites! Failed to communicate with a remote provider."

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1131
    .end local v1    # "e":Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v2

    .line 1132
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v7, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Cannot add favorites! Application fails."

    invoke-static {v7, v8}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setSuperPrimary(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1261
    const-string/jumbo v3, "dataId"

    invoke-virtual {p1, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1262
    .local v0, "dataId":J
    cmp-long v3, v0, v8

    if-nez v3, :cond_0

    .line 1263
    sget-object v3, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Invalid arguments for setSuperPrimary request"

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    return-void

    .line 1268
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1269
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "is_super_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1270
    const-string/jumbo v3, "is_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1272
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1260
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "message"    # I

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/ContactSaveService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/ContactSaveService$1;-><init>(Lcom/android/contacts/ContactSaveService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1437
    return-void
.end method

.method public static unregisterListener(Lcom/android/contacts/ContactSaveService$Listener;)V
    .locals 1
    .param p0, "listener"    # Lcom/android/contacts/ContactSaveService$Listener;

    .prologue
    .line 213
    sget-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method private updateGroup(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v12, -0x1

    const/4 v10, 0x0

    .line 933
    const-string/jumbo v9, "groupId"

    invoke-virtual {p1, v9, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 934
    .local v2, "groupId":J
    const-string/jumbo v9, "groupLabel"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 935
    .local v4, "label":Ljava/lang/String;
    const-string/jumbo v9, "rawContactsToAdd"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v5

    .line 936
    .local v5, "rawContactsToAdd":[J
    const-string/jumbo v9, "rawContactsToRemove"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v6

    .line 938
    .local v6, "rawContactsToRemove":[J
    cmp-long v9, v2, v12

    if-nez v9, :cond_0

    .line 939
    sget-object v9, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Invalid arguments for updateGroup request"

    invoke-static {v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    return-void

    .line 943
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 944
    .local v7, "resolver":Landroid/content/ContentResolver;
    sget-object v9, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 947
    .local v1, "groupUri":Landroid/net/Uri;
    if-eqz v4, :cond_1

    .line 948
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 949
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v9, "title"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    invoke-virtual {v7, v1, v8, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 954
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-static {v7, v5, v2, v3}, Lcom/android/contacts/ContactSaveService;->addMembersToGroup(Landroid/content/ContentResolver;[JJ)V

    .line 955
    invoke-static {v7, v6, v2, v3}, Lcom/android/contacts/ContactSaveService;->removeMembersFromGroup(Landroid/content/ContentResolver;[JJ)V

    .line 957
    const-string/jumbo v9, "callbackIntent"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 958
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 959
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 932
    return-void
.end method

.method private updateMedicalInformation(Landroid/content/Intent;)V
    .locals 3
    .param p1, "input"    # Landroid/content/Intent;

    .prologue
    .line 1190
    const-string/jumbo v1, "medicalInfoValues"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 1191
    .local v0, "values":Landroid/content/ContentValues;
    if-nez v0, :cond_0

    .line 1192
    sget-object v1, Lcom/android/contacts/ContactSaveService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Invalid arguments for updateMedicalInformaiont request"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    return-void

    .line 1196
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->updateOrInsertMedicalInformation(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 1189
    return-void
.end method


# virtual methods
.method deliverCallbackOnUiThread(Landroid/content/Intent;)V
    .locals 4
    .param p1, "callbackIntent"    # Landroid/content/Intent;

    .prologue
    .line 1461
    sget-object v2, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactSaveService$Listener;

    .line 1462
    .local v0, "listener":Lcom/android/contacts/ContactSaveService$Listener;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v0

    .line 1463
    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 1462
    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1464
    invoke-interface {v0, p1}, Lcom/android/contacts/ContactSaveService$Listener;->onServiceCompleted(Landroid/content/Intent;)V

    .line 1465
    return-void

    .line 1457
    .end local v0    # "listener":Lcom/android/contacts/ContactSaveService$Listener;
    :cond_1
    return-void
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/app/IntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 219
    .local v0, "service":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 220
    return-object v0

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "newRawContact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->createRawContact(Landroid/content/Intent;)V

    .line 233
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const-string/jumbo v1, "saveContact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->saveContact(Landroid/content/Intent;)V

    .line 236
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto :goto_0

    .line 237
    :cond_2
    const-string/jumbo v1, "createGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 238
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->createGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 239
    :cond_3
    const-string/jumbo v1, "renameGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 240
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->renameGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 241
    :cond_4
    const-string/jumbo v1, "deleteGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 242
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deleteGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 243
    :cond_5
    const-string/jumbo v1, "updateGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 244
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->updateGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 245
    :cond_6
    const-string/jumbo v1, "setStarred"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 246
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setStarred(Landroid/content/Intent;)V

    goto :goto_0

    .line 247
    :cond_7
    const-string/jumbo v1, "setStarredBatch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 248
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setStarredBatch(Landroid/content/Intent;)V

    goto :goto_0

    .line 249
    :cond_8
    const-string/jumbo v1, "setIceContact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 250
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setIce(Landroid/content/Intent;)V

    goto :goto_0

    .line 251
    :cond_9
    const-string/jumbo v1, "setIceContactBatch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 252
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setIceBatch(Landroid/content/Intent;)V

    goto :goto_0

    .line 253
    :cond_a
    const-string/jumbo v1, "updateMedicalInformation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 254
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->updateMedicalInformation(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 255
    :cond_b
    const-string/jumbo v1, "setSuperPrimary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 256
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setSuperPrimary(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 257
    :cond_c
    const-string/jumbo v1, "clearPrimary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 258
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->clearPrimary(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 259
    :cond_d
    const-string/jumbo v1, "delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 260
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deleteContact(Landroid/content/Intent;)V

    .line 261
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 262
    :cond_e
    const-string/jumbo v1, "joinContacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 263
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->joinContacts(Landroid/content/Intent;)V

    .line 264
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 265
    :cond_f
    const-string/jumbo v1, "sendToVoicemail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 266
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setSendToVoicemail(Landroid/content/Intent;)V

    .line 267
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 268
    :cond_10
    const-string/jumbo v1, "setRingtone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setRingtone(Landroid/content/Intent;)V

    .line 270
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
