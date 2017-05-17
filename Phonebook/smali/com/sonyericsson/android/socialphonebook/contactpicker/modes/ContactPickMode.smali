.class public Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ContactPickMode;
.super Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;
.source "ContactPickMode.java"


# static fields
.field private static final MODE_PICK_CONTACT:I = 0xc200001

.field private static final MODE_PICK_MULTI_CONTACTS_WITHOUT_PROFILE:I = 0xc400001

.field private static final MODE_PICK_MULTI_CONTACTS_WITH_PROFILE:I = 0xc500001


# instance fields
.field private mContactsFilterOutIce:Z

.field private mContactsOnlyWithPhone:Z

.field private mIsSkippedFavorites:Z

.field private mModeConfiguration:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;-><init>(Landroid/content/Intent;)V

    .line 52
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ContactPickMode;->mIsSkippedFavorites:Z

    .line 56
    const-string/jumbo v0, "isPickMultiContacts"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const v0, 0xc500001

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ContactPickMode;->mModeConfiguration:I

    .line 64
    :goto_0
    const-string/jumbo v0, "contact_only_phone"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ContactPickMode;->mContactsOnlyWithPhone:Z

    .line 66
    const-string/jumbo v0, "contact_only_no_ice"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ContactPickMode;->mContactsFilterOutIce:Z

    .line 68
    const-string/jumbo v0, "extraSkipFavorites"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ContactPickMode;->mIsSkippedFavorites:Z

    .line 54
    return-void

    .line 58
    :cond_0
    const-string/jumbo v0, "isPickMultiContactsWithoutProfile"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const v0, 0xc400001

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ContactPickMode;->mModeConfiguration:I

    goto :goto_0

    .line 62
    :cond_1
    const v0, 0xc200001

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ContactPickMode;->mModeConfiguration:I

    goto :goto_0
.end method


# virtual methods
.method public createNewRecipientItem(Landroid/net/Uri;Landroid/database/Cursor;Landroid/content/res/Resources;)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 158
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 161
    .local v0, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    const v2, 0x7f090202

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    :cond_0
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    invoke-direct {v2, p1, v1, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v2
.end method

.method public getFilterUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "directoryId"    # J

    .prologue
    .line 84
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getModeConfiguration()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ContactPickMode;->mModeConfiguration:I

    return v0
.end method

.method public getProjection(Z)[Ljava/lang/String;
    .locals 1
    .param p1, "sortPrimary"    # Z

    .prologue
    .line 73
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactQuery;->CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

    :goto_0
    return-object v0

    .line 74
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactQuery;->CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getQueryHintResourceId()I
    .locals 1

    .prologue
    .line 153
    const v0, 0x7f0901f2

    return v0
.end method

.method public getQueryUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "directoryId"    # J

    .prologue
    .line 79
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getSelection(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ContactPickMode;->isSimContactInvisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    const-string/jumbo v1, "in_visible_group = 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v1, " NOT IN (SELECT DISTINCT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo v1, "contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string/jumbo v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string/jumbo v1, "raw_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string/jumbo v1, " WHERE ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v1, "raw_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v1, "account_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo v1, " IN (SELECT _id FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v1, "accounts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string/jumbo v1, "account_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string/jumbo v1, " IN (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v1, "com.sonyericsson.adncontacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v1, "com.sonyericsson.adnsub1contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v1, "com.sonyericsson.adnsub2contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string/jumbo v1, "\'))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ContactPickMode;->mContactsFilterOutIce:Z

    if-eqz v1, :cond_0

    .line 121
    const-string/jumbo v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string/jumbo v1, "ice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string/jumbo v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_0
    const-string/jumbo v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string/jumbo v1, "deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string/jumbo v1, "=0) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :goto_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ContactPickMode;->mContactsOnlyWithPhone:Z

    if-eqz v1, :cond_1

    .line 133
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string/jumbo v1, "has_phone_number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string/jumbo v1, "=1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ContactPickMode;->mIsSkippedFavorites:Z

    if-eqz v1, :cond_2

    .line 139
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string/jumbo v1, "starred"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string/jumbo v1, "=0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 129
    :cond_3
    const-string/jumbo v1, "in_visible_group = 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getUriFromPosition(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;IJ)Landroid/net/Uri;
    .locals 1
    .param p1, "adapter"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;
    .param p2, "position"    # I
    .param p3, "directoryId"    # J

    .prologue
    .line 170
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public isPickContact()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method
