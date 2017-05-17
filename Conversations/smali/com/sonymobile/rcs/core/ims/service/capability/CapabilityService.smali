.class public Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;
.super Lcom/sonymobile/rcs/core/ims/service/ImsService;
.source "CapabilityService.java"

# interfaces
.implements Lcom/sonymobile/rcs/addressbook/AddressBookEventListener;


# static fields
.field private static final CAPABILITY_REFRESH_PERIOD:I


# instance fields
.field private anonymousFetchManager:Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;

.field private isCheckInProgress:Z

.field private isRecheckNeeded:Z

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private optionsManager:Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;

.field private pollingManager:Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getCapabilityRefreshTimeout()I

    move-result v0

    sput v0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->CAPABILITY_REFRESH_PERIOD:I

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V
    .locals 2
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/ImsModule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/rcs/core/ims/service/ImsService;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;Z)V

    .line 81
    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->isRecheckNeeded:Z

    .line 86
    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->isCheckInProgress:Z

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 103
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;-><init>(Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->pollingManager:Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;

    .line 106
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;

    invoke-direct {v0, p1}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->optionsManager:Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;

    .line 109
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;

    invoke-direct {v0, p1}, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;-><init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->anonymousFetchManager:Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;

    .line 112
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityUtils;->updateExternalSupportedFeatures(Landroid/content/Context;)V

    .line 113
    return-void
.end method


# virtual methods
.method public getAnonymousFetchManager()Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->anonymousFetchManager:Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;

    return-object v0
.end method

.method public getOptionsManager()Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->optionsManager:Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;

    return-object v0
.end method

.method public handleAddressBookHasChanged()V
    .locals 24

    .prologue
    .line 304
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->isCheckInProgress:Z

    if-nez v2, :cond_0

    .line 310
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->isCheckInProgress:Z

    .line 313
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->isRecheckNeeded:Z

    const/4 v14, 0x0

    .local v14, "number":Ljava/lang/String;
    const-string/jumbo v5, "(account_type=? OR account_type=? OR account_type=? OR account_type=?)"

    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x4

    .line 321
    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "com.sonyericsson.localcontacts"

    aput-object v3, v6, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "com.google"

    aput-object v3, v6, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "com.sonyericsson.adncontacts"

    aput-object v3, v6, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "com.android.exchange"

    aput-object v3, v6, v2

    .local v6, "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x3

    .line 327
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "data1"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "raw_contact_id"

    aput-object v3, v4, v2

    .line 330
    .local v4, "projection":[Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 334
    .local v16, "phonesCursor":Landroid/database/Cursor;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v20, "toBeTreatedNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v8, "alreadyInEabOrInvalidNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v2, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    if-nez v16, :cond_2

    .line 433
    .end local v14    # "number":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->requestContactCapabilities(Ljava/util/List;)V

    .line 436
    if-nez v14, :cond_e

    .line 457
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->isCheckInProgress:Z

    .line 460
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->isRecheckNeeded:Z

    if-nez v2, :cond_12

    .line 463
    :goto_2
    return-void

    .line 305
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "alreadyInEabOrInvalidNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "phonesCursor":Landroid/database/Cursor;
    .end local v20    # "toBeTreatedNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->isRecheckNeeded:Z

    .line 306
    return-void

    .line 389
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v5    # "selection":Ljava/lang/String;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v8    # "alreadyInEabOrInvalidNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v10, "contact":Ljava/lang/String;
    .local v13, "isTmobile":Z
    .local v15, "phoneNumber":Ljava/lang/String;
    .restart local v16    # "phonesCursor":Landroid/database/Cursor;
    .restart local v20    # "toBeTreatedNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_0
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 346
    .end local v10    # "contact":Ljava/lang/String;
    .end local v13    # "isTmobile":Z
    .end local v15    # "phoneNumber":Ljava/lang/String;
    :cond_2
    :goto_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 427
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    .line 349
    :try_start_1
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 350
    .restart local v15    # "phoneNumber":Ljava/lang/String;
    invoke-static {v15}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToInternational(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 351
    .restart local v10    # "contact":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 354
    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v2, "00"

    .line 356
    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 359
    :goto_4
    invoke-static {}, Lcom/sonymobile/rcs/utils/PhoneUtils;->isNormalizationNeeded()Z

    move-result v13

    .line 360
    .restart local v13    # "isTmobile":Z
    if-nez v13, :cond_8

    .line 362
    :cond_4
    move-object v15, v10

    .line 367
    :cond_5
    :goto_5
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isRcsAssociated(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 372
    :cond_6
    :goto_6
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 405
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    .line 410
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 412
    .local v18, "rawContactId":J
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_2

    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1, v15}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getAssociatedRcsRawContact(JLjava/lang/String;)J

    move-result-wide v2

    const-wide/16 v22, -0x1

    cmp-long v2, v2, v22

    if-nez v2, :cond_2

    .line 417
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    move-result-object v11

    .line 419
    .local v11, "currentInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->isRcsContact()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 420
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v11, v0, v1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createRcsContact(Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 428
    .end local v10    # "contact":Ljava/lang/String;
    .end local v11    # "currentInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .end local v13    # "isTmobile":Z
    .end local v15    # "phoneNumber":Ljava/lang/String;
    .end local v18    # "rawContactId":J
    :catchall_0
    move-exception v2

    .line 427
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v2

    .line 356
    .restart local v10    # "contact":Ljava/lang/String;
    .restart local v15    # "phoneNumber":Ljava/lang/String;
    :cond_7
    :try_start_2
    invoke-static {v15}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToInternational(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    .line 360
    .restart local v13    # "isTmobile":Z
    :cond_8
    if-eqz v13, :cond_5

    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isNatUriFormatUsed()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_5

    .line 367
    :cond_9
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactSavedState(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v15}, Lcom/sonymobile/rcs/utils/ContactUtils;->isNumberInAddressBook(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 370
    move-object v14, v15

    .local v14, "number":Ljava/lang/String;
    goto :goto_6

    .line 375
    .end local v14    # "number":Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isRcsValidNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 395
    :cond_b
    :goto_7
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 375
    :cond_c
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isRcsAssociated(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_1

    goto :goto_7

    .line 390
    :cond_d
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .end local v10    # "contact":Ljava/lang/String;
    .end local v13    # "isTmobile":Z
    .end local v15    # "phoneNumber":Ljava/lang/String;
    :cond_e
    const-wide/16 v18, 0x0

    .line 438
    .restart local v18    # "rawContactId":J
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getRawContactIdsFromPhoneNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 440
    .local v17, "rawContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 454
    :goto_8
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->updateContactSavedStatusToTrue(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    const/4 v2, 0x0

    .line 441
    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const/4 v9, 0x0

    .line 443
    .local v9, "availability":I
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    move-result-object v11

    .line 444
    .restart local v11    # "currentInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    if-nez v11, :cond_10

    .line 449
    :goto_9
    :try_start_3
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1, v9}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setStatusUpdateTable(JI)V
    :try_end_3
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    .line 452
    :catch_0
    move-exception v12

    .line 451
    .local v12, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v12}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_8

    .line 445
    .end local v12    # "e":Landroid/content/OperationApplicationException;
    :cond_10
    invoke-virtual {v11}, Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;->isRcsContact()Z

    move-result v2

    if-nez v2, :cond_11

    const/4 v9, 0x0

    :goto_a
    goto :goto_9

    :cond_11
    const/4 v9, 0x5

    goto :goto_a

    .line 461
    .end local v9    # "availability":I
    .end local v11    # "currentInfo":Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .end local v17    # "rawContactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v18    # "rawContactId":J
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->handleAddressBookHasChanged()V

    goto/16 :goto_2
.end method

.method public receiveCapabilityRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 1
    .param p1, "options"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->optionsManager:Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->receiveCapabilityRequest(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 288
    return-void
.end method

.method public receiveNotification(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V
    .locals 1
    .param p1, "notify"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->anonymousFetchManager:Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/service/capability/AnonymousFetchManager;->receiveNotification(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)V

    .line 297
    return-void
.end method

.method public declared-synchronized requestContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 194
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->requestContactCapabilities(Ljava/lang/String;Z)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestContactCapabilities(Ljava/lang/String;Z)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    .locals 10
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "forceRequest"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_2

    .line 211
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/utils/PhoneUtils;->isNormalizationNeeded()Z

    move-result v6

    if-nez v6, :cond_3

    .line 222
    :cond_0
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 225
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_7

    :cond_1
    monitor-exit p0

    .line 228
    return-object v9

    .line 207
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Request capabilities to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 211
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isNatUriFormatUsed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 213
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUriForTelekom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "phoneNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 218
    :goto_2
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    const-string/jumbo v6, "00"

    .line 214
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 216
    :cond_5
    move-object p1, v1

    goto :goto_1

    :cond_6
    const-string/jumbo v6, "+"

    .line 214
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    .line 225
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :cond_7
    sget-object v6, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "00"

    .line 230
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 233
    :goto_3
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isRcsValidNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 241
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v0

    .line 242
    .local v0, "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    if-eqz v0, :cond_b

    .line 250
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_d

    .line 253
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->getTimestamp()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 254
    .local v2, "delta":J
    sget v6, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->CAPABILITY_REFRESH_PERIOD:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    cmp-long v6, v2, v6

    if-ltz v6, :cond_e

    move v6, v4

    :goto_5
    if-nez v6, :cond_10

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_f

    :goto_6
    if-nez v4, :cond_10

    if-nez p2, :cond_10

    .end local v2    # "delta":J
    :goto_7
    monitor-exit p0

    .line 264
    return-object v0

    .line 230
    .end local v0    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :cond_8
    :try_start_3
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToInternational(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 234
    :cond_9
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-nez v4, :cond_a

    :goto_8
    monitor-exit p0

    .line 237
    return-object v9

    .line 235
    :cond_a
    :try_start_4
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not a valid joyn number"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_8

    .line 243
    .restart local v0    # "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    :cond_b
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_c

    .line 248
    :goto_9
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->optionsManager:Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;

    invoke-virtual {v4, p1}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->requestCapabilities(Ljava/lang/String;)Z

    goto :goto_7

    .line 244
    :cond_c
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No capability exist for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_9

    .line 251
    :cond_d
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Capabilities exist for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_4

    .restart local v2    # "delta":J
    :cond_e
    move v6, v5

    .line 254
    goto :goto_5

    :cond_f
    move v4, v5

    goto :goto_6

    .line 255
    :cond_10
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_11

    .line 261
    :goto_a
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->optionsManager:Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->requestCapabilities(Ljava/lang/String;Z)Z

    goto :goto_7

    .line 256
    :cond_11
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Capabilities have expired for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a
.end method

.method public requestContactCapabilities(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "contactList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 277
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->optionsManager:Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->requestCapabilities(Ljava/util/List;)V

    goto :goto_0

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request capabilities for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public resetContactCapabilitiesForContentSharing(Ljava/lang/String;)V
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 471
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactCapabilities(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;

    move-result-object v0

    .line 472
    .local v0, "capabilities":Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
    if-nez v0, :cond_0

    .line 484
    :goto_0
    return-void

    .line 474
    :cond_0
    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setImageSharingSupport(Z)V

    .line 475
    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->setVideoSharingSupport(Z)V

    .line 478
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->setContactCapabilities(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V

    .line 481
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getListener()Lcom/sonymobile/rcs/core/CoreListener;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/sonymobile/rcs/core/CoreListener;->handleCapabilitiesNotification(Ljava/lang/String;Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;)V

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->isServiceStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->setServiceStarted(Z)V

    .line 126
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->optionsManager:Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->start()V

    .line 129
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/Core;->getAddressBookManager()Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->addAddressBookListener(Lcom/sonymobile/rcs/addressbook/AddressBookEventListener;)V

    .line 132
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->pollingManager:Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->start()V

    .line 135
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService$1;-><init>(Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;)V

    .line 140
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 141
    return-void

    .end local v0    # "t":Ljava/lang/Thread;
    :cond_0
    monitor-exit p0

    .line 121
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->isServiceStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->setServiceStarted(Z)V

    .line 154
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->optionsManager:Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/capability/OptionsManager;->stop()V

    .line 157
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->pollingManager:Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/capability/PollingManager;->stop()V

    .line 160
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/capability/CapabilityService;->getImsModule()Lcom/sonymobile/rcs/core/ims/ImsModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/ImsModule;->getCore()Lcom/sonymobile/rcs/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/Core;->getAddressBookManager()Lcom/sonymobile/rcs/addressbook/AddressBookManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/rcs/addressbook/AddressBookManager;->removeAddressBookListener(Lcom/sonymobile/rcs/addressbook/AddressBookEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 161
    return-void

    :cond_0
    monitor-exit p0

    .line 149
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
