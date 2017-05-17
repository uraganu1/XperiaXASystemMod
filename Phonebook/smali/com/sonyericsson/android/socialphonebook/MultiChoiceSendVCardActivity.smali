.class public Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;
.super Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;
.source "MultiChoiceSendVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MultiChoiceSendQueryHandler;,
        Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$WithMyselfCursor;,
        Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;
    }
.end annotation


# static fields
.field private static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final sContactsRequestUri:Landroid/net/Uri;


# instance fields
.field private mAccountInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonyericsson/android/socialphonebook/AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLinkedContactLabel:Ljava/lang/String;

.field private mProfileContactId:J

.field private mProfileCursorCount:I

.field private mProfilePhoneNumber:Ljava/lang/String;

.field private mProfilePhotoId:J


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mAccountInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mLinkedContactLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mProfileContactId:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)I
    .locals 1

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mProfileCursorCount:I

    return v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mProfilePhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mProfilePhotoId:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mProfileContactId:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mProfileCursorCount:I

    return p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mProfilePhoneNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mProfilePhotoId:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;)I
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->getProfileCursorCount()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->prepareContactIds(Landroid/database/Cursor;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 55
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v1, "requesting_package"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 56
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->sContactsRequestUri:Landroid/net/Uri;

    .line 59
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 60
    const-string/jumbo v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 61
    const-string/jumbo v2, "contact_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 62
    const-string/jumbo v2, "account_type"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 63
    const-string/jumbo v2, "account_name"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 59
    sput-object v1, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mProfileCursorCount:I

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mAccountInfoMap:Ljava/util/HashMap;

    .line 40
    return-void
.end method

.method private getProfileCursorCount()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mProfileCursorCount:I

    return v0
.end method

.method private prepareContactIds(Landroid/database/Cursor;)V
    .locals 12
    .param p1, "aCursor"    # Landroid/database/Cursor;

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 269
    return-void

    .line 272
    :cond_0
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mAccountInfoMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 274
    const-string/jumbo v7, "contact_id"

    .line 273
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 276
    .local v6, "cidIdx":I
    const-string/jumbo v7, "account_type"

    .line 275
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 278
    .local v3, "accTypeIdx":I
    const-string/jumbo v7, "account_name"

    .line 277
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 281
    .local v1, "accNameIdx":I
    const-wide/16 v8, -0x1

    .line 282
    .local v8, "prevCid":J
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 283
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 284
    .local v4, "cid":J
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "accType":Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "accName":Ljava/lang/String;
    cmp-long v7, v4, v8

    if-eqz v7, :cond_1

    .line 287
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mAccountInfoMap:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 288
    new-instance v11, Lcom/sonyericsson/android/socialphonebook/AccountInfo;

    invoke-direct {v11, v2, v0}, Lcom/sonyericsson/android/socialphonebook/AccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    move-wide v8, v4

    goto :goto_0

    .line 291
    :cond_1
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mAccountInfoMap:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 294
    .end local v0    # "accName":Ljava/lang/String;
    .end local v2    # "accType":Ljava/lang/String;
    .end local v4    # "cid":J
    :catchall_0
    move-exception v7

    .line 295
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 294
    throw v7

    .line 295
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 267
    return-void
.end method

.method private sendMultiChoiceContacts()V
    .locals 8

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->getCheckedIds()Ljava/util/ArrayList;

    move-result-object v4

    .line 139
    .local v4, "markedIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 140
    .local v0, "count":I
    new-array v3, v0, [J

    .line 141
    .local v3, "makredIds_long":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 142
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v1

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/sonyericsson/android/socialphonebook/SendVcardActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string/jumbo v5, "contacts_id"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 148
    const-string/jumbo v5, "display_progress"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    const-string/jumbo v5, "choose_title"

    .line 150
    const v6, 0x7f0902ce

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 149
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->startActivity(Landroid/content/Intent;)V

    .line 153
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->finish()V

    .line 137
    return-void
.end method


# virtual methods
.method protected createQueryHandler()Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MultiChoiceSendQueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MultiChoiceSendQueryHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;)V

    return-object v0
.end method

.method protected getAdapter()Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity$MulitiChoiceSendListAdapter;-><init>(Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic getAdapter()Lcom/sonyericsson/android/socialphonebook/widget/ContactsListAdapter;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->getAdapter()Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity$ChoiceContactListAdatpter;

    move-result-object v0

    return-object v0
.end method

.method protected getContactsCount()I
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->getContactsCount()I

    move-result v0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->getProfileCursorCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected final getDoneBtnLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0902d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "aSavedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->requestWindowFeature(I)Z

    .line 72
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f09021d

    .line 75
    const v1, 0x7f0902d3

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->setTitle(II)V

    .line 77
    const v0, 0x7f09025b

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mLinkedContactLabel:Ljava/lang/String;

    .line 70
    return-void
.end method

.method protected onDoneBtnClicked()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->sendMultiChoiceContacts()V

    .line 133
    return-void
.end method

.method protected startQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    if-nez v0, :cond_0

    .line 84
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    .line 90
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 91
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 94
    const-string/jumbo v7, "contact_id ASC"

    .line 88
    const/16 v1, 0x13f6

    move-object v5, v2

    move-object v6, v2

    .line 87
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method protected startSubQuery()V
    .locals 9

    .prologue
    const/16 v1, 0x2a

    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    if-nez v0, :cond_0

    .line 99
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v8, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "_id"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v0, " IN "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string/jumbo v0, "(SELECT contacts._id FROM contacts,raw_contacts"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v0, " WHERE contacts.name_raw_contact_id = raw_contacts._id"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v0, " AND raw_contacts.account_type != \'com.sonyericsson.sdncontacts\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string/jumbo v0, " AND raw_contacts.is_restricted=0)"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string/jumbo v0, " AND in_visible_group = 1 "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->mQueryHandler:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->sContactsRequestUri:Landroid/net/Uri;

    .line 118
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 119
    sget-object v6, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/MultiChoiceSendVCardActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    .line 117
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method
