.class public Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;
.super Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;
.source "ConversationPickMode.java"


# static fields
.field private static final PROJECTION_ALTERNATIVE:[Ljava/lang/String;

.field private static final PROJECTION_PRIMARY:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneOnlyConversationMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 36
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 37
    const-string/jumbo v1, "data2"

    aput-object v1, v0, v4

    .line 38
    const-string/jumbo v1, "data3"

    aput-object v1, v0, v5

    .line 39
    const-string/jumbo v1, "data1"

    aput-object v1, v0, v6

    .line 40
    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v7

    .line 41
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 42
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 43
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "mimetype"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "sort_key"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "sort_key_alt"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 35
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;->PROJECTION_PRIMARY:[Ljava/lang/String;

    .line 49
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 50
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 51
    const-string/jumbo v1, "data2"

    aput-object v1, v0, v4

    .line 52
    const-string/jumbo v1, "data3"

    aput-object v1, v0, v5

    .line 53
    const-string/jumbo v1, "data1"

    aput-object v1, v0, v6

    .line 54
    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v7

    .line 55
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "display_name_alt"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "mimetype"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "sort_key"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 60
    const-string/jumbo v1, "sort_key_alt"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 49
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 64
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;-><init>(Landroid/content/Intent;)V

    .line 65
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;->mContext:Landroid/content/Context;

    .line 67
    const-string/jumbo v3, "mmsEnabled"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    const-string/jumbo v3, "mmsEnabled"

    .line 68
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;->mPhoneOnlyConversationMode:Z

    .line 63
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 68
    goto :goto_0

    .line 71
    :cond_1
    const-string/jumbo v3, "com.sonyericsson.android.socialphonebook.intent.extra.MODE"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 72
    .local v0, "mode":I
    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    .line 73
    iput-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;->mPhoneOnlyConversationMode:Z

    goto :goto_1

    .line 75
    :cond_2
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;->mPhoneOnlyConversationMode:Z

    goto :goto_1
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "phoneOnlyConversationMode"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;-><init>(Landroid/content/Intent;)V

    .line 83
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;->mContext:Landroid/content/Context;

    .line 84
    iput-boolean p3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;->mPhoneOnlyConversationMode:Z

    .line 81
    return-void
.end method

.method private appendGroupSelection(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;->getGroupMembers()[J

    move-result-object v0

    .line 145
    .local v0, "groupMemIds":[J
    if-eqz v0, :cond_2

    array-length v3, v0

    if-lez v3, :cond_2

    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 147
    const-string/jumbo v3, " AND "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_0
    const-string/jumbo v3, "contact_id"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string/jumbo v3, " IN ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-wide v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 154
    .local v1, "id":Ljava/lang/Long;
    const-string/jumbo v4, "\'"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    const-string/jumbo v4, "\',"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "id":Ljava/lang/Long;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 160
    const-string/jumbo v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_2
    return-void
.end method


# virtual methods
.method public getFilterUri(J)Landroid/net/Uri;
    .locals 3
    .param p1, "directoryId"    # J

    .prologue
    .line 101
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    .line 102
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected getModeConfiguration()I
    .locals 1

    .prologue
    .line 166
    const v0, 0x49600020    # 917506.0f

    return v0
.end method

.method public getProjection(Z)[Ljava/lang/String;
    .locals 1
    .param p1, "sortPrimary"    # Z

    .prologue
    .line 89
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;->PROJECTION_PRIMARY:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getQueryHintResourceId()I
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;->mPhoneOnlyConversationMode:Z

    if-eqz v0, :cond_0

    .line 173
    const v0, 0x7f09021c

    return v0

    .line 175
    :cond_0
    const v0, 0x7f09021b

    return v0
.end method

.method public getQueryUri(J)Landroid/net/Uri;
    .locals 3
    .param p1, "directoryId"    # J

    .prologue
    .line 95
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getSelection(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;->mPhoneOnlyConversationMode:Z

    if-nez v1, :cond_0

    .line 119
    const-string/jumbo v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string/jumbo v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string/jumbo v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_0
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;->isFavorite()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string/jumbo v1, "starred"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string/jumbo v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;->isSpecificGroup()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;->appendGroupSelection(Ljava/lang/StringBuilder;)V

    .line 139
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 136
    :cond_2
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo v1, "in_visible_group = 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getTitleResourceId()I
    .locals 1

    .prologue
    .line 193
    const v0, 0x7f090268

    return v0
.end method

.method public getUriFromPosition(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;IJ)Landroid/net/Uri;
    .locals 5
    .param p1, "adapter"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;
    .param p2, "position"    # I
    .param p3, "directoryId"    # J

    .prologue
    .line 198
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_0

    .line 199
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getItemId(I)J

    move-result-wide v0

    .line 200
    .local v0, "id":J
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 202
    .end local v0    # "id":J
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public isPickContact()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public isValidSearchString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "phonePattern":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;->mPhoneOnlyConversationMode:Z

    if-eqz v1, :cond_0

    .line 184
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1

    .line 186
    :cond_0
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 186
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
