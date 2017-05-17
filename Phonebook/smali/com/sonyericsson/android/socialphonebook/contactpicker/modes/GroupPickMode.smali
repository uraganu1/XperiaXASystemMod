.class public Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/GroupPickMode;
.super Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;
.source "GroupPickMode.java"


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;-><init>(Landroid/content/Intent;)V

    .line 30
    return-void
.end method

.method private appendGroupSelection(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/GroupPickMode;->getGroupMembers()[J

    move-result-object v0

    .line 103
    .local v0, "groupMemIds":[J
    if-eqz v0, :cond_2

    array-length v3, v0

    if-lez v3, :cond_2

    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 105
    const-string/jumbo v3, " AND "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_0
    const-string/jumbo v3, "_id"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo v3, " NOT IN ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-wide v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 112
    .local v1, "id":Ljava/lang/Long;
    const-string/jumbo v4, "\'"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v4, "\',"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "id":Ljava/lang/Long;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_2
    return-void
.end method


# virtual methods
.method public createNewRecipientItem(Landroid/net/Uri;Landroid/database/Cursor;Landroid/content/res/Resources;)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    .locals 3
    .param p1, "aUri"    # Landroid/net/Uri;
    .param p2, "aCursor"    # Landroid/database/Cursor;
    .param p3, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 135
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 138
    .local v0, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    const v2, 0x7f090202

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    :cond_0
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    invoke-direct {v2, p1, v1, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v2
.end method

.method public getFilterUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "directoryId"    # J

    .prologue
    .line 47
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getModeConfiguration()I
    .locals 1

    .prologue
    .line 124
    const v0, 0x4d400080    # 2.0132864E8f

    return v0
.end method

.method public getProjection(Z)[Ljava/lang/String;
    .locals 1
    .param p1, "sortPrimary"    # Z

    .prologue
    .line 36
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactQuery;->CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

    :goto_0
    return-object v0

    .line 37
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactQuery;->CONTACT_PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getQueryHintResourceId()I
    .locals 1

    .prologue
    .line 130
    const v0, 0x7f0901f2

    return v0
.end method

.method public getQueryUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "directoryId"    # J

    .prologue
    .line 42
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getSelection(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "in_visible_group = 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v1, " IN (SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v1, "contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string/jumbo v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string/jumbo v1, "raw_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string/jumbo v1, "raw_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string/jumbo v1, "account_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string/jumbo v1, "=(SELECT _id FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v1, "accounts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string/jumbo v1, "account_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string/jumbo v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/GroupPickMode;->getGroupAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v1, "\'  AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string/jumbo v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/GroupPickMode;->getGroupAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string/jumbo v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/GroupPickMode;->getGroupAccountDataset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const-string/jumbo v1, "data_set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v1, " IS NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :goto_0
    const-string/jumbo v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string/jumbo v1, "deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string/jumbo v1, "=0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/GroupPickMode;->appendGroupSelection(Ljava/lang/StringBuilder;)V

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 86
    :cond_0
    const-string/jumbo v1, "data_set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string/jumbo v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/GroupPickMode;->getGroupAccountDataset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getUriFromPosition(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;IJ)Landroid/net/Uri;
    .locals 5
    .param p1, "adapter"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;
    .param p2, "position"    # I
    .param p3, "directoryId"    # J

    .prologue
    .line 147
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_0

    .line 148
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getItemId(I)J

    move-result-wide v0

    .line 149
    .local v0, "id":J
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 151
    .end local v0    # "id":J
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public isPickContact()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method
