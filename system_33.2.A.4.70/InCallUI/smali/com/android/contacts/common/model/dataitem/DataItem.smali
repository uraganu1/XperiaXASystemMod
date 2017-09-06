.class public Lcom/android/contacts/common/model/dataitem/DataItem;
.super Ljava/lang/Object;
.source "DataItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/contacts/common/Collapser$Collapsible",
        "<",
        "Lcom/android/contacts/common/model/dataitem/DataItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContentValues:Landroid/content/ContentValues;


# direct methods
.method protected constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    .line 58
    return-void
.end method

.method public static createFrom(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/dataitem/DataItem;
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 67
    const-string/jumbo v1, "mimetype"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "mimeType":Ljava/lang/String;
    const-string/jumbo v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Lcom/android/contacts/common/model/dataitem/GroupMembershipDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/GroupMembershipDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 70
    :cond_0
    const-string/jumbo v1, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    new-instance v1, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 72
    :cond_1
    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    new-instance v1, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 74
    :cond_2
    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    new-instance v1, Lcom/android/contacts/common/model/dataitem/EmailDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/EmailDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 76
    :cond_3
    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 77
    new-instance v1, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 78
    :cond_4
    const-string/jumbo v1, "vnd.android.cursor.item/im"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 79
    new-instance v1, Lcom/android/contacts/common/model/dataitem/ImDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 80
    :cond_5
    const-string/jumbo v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 81
    new-instance v1, Lcom/android/contacts/common/model/dataitem/OrganizationDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/OrganizationDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 82
    :cond_6
    const-string/jumbo v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 83
    new-instance v1, Lcom/android/contacts/common/model/dataitem/NicknameDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/NicknameDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 84
    :cond_7
    const-string/jumbo v1, "vnd.android.cursor.item/note"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 85
    new-instance v1, Lcom/android/contacts/common/model/dataitem/NoteDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/NoteDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 86
    :cond_8
    const-string/jumbo v1, "vnd.android.cursor.item/website"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 87
    new-instance v1, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 88
    :cond_9
    const-string/jumbo v1, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 89
    new-instance v1, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 90
    :cond_a
    const-string/jumbo v1, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 91
    new-instance v1, Lcom/android/contacts/common/model/dataitem/EventDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/EventDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 92
    :cond_b
    const-string/jumbo v1, "vnd.android.cursor.item/relation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 93
    new-instance v1, Lcom/android/contacts/common/model/dataitem/RelationDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 94
    :cond_c
    const-string/jumbo v1, "vnd.android.cursor.item/identity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 95
    new-instance v1, Lcom/android/contacts/common/model/dataitem/IdentityDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/IdentityDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 96
    :cond_d
    const-string/jumbo v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 97
    new-instance v1, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 99
    :cond_e
    const-string/jumbo v1, "vnd.android.cursor.item/ims"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 100
    new-instance v1, Lcom/mediatek/contacts/model/dataitem/ImsCallDataItem;

    invoke-direct {v1, p0}, Lcom/mediatek/contacts/model/dataitem/ImsCallDataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1

    .line 104
    :cond_f
    new-instance v1, Lcom/android/contacts/common/model/dataitem/DataItem;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    return-object v1
.end method


# virtual methods
.method public getContentValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
