.class public Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/EmailPickMode;
.super Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;
.source "EmailPickMode.java"


# static fields
.field private static final MODE_PICK_EMAIL:I = 0x49200010

.field private static final MODE_PICK_MULTI_EMAIL:I = 0x49600010

.field private static final PROJECTION_ALTERNATIVE:[Ljava/lang/String;

.field private static final PROJECTION_PRIMARY:[Ljava/lang/String;


# instance fields
.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 29
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 30
    const-string/jumbo v1, "data2"

    aput-object v1, v0, v4

    .line 31
    const-string/jumbo v1, "data3"

    aput-object v1, v0, v5

    .line 32
    const-string/jumbo v1, "data1"

    aput-object v1, v0, v6

    .line 33
    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v7

    .line 34
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 35
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 36
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "mimetype"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 38
    const-string/jumbo v1, "sort_key"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 39
    const-string/jumbo v1, "sort_key_alt"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 28
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/EmailPickMode;->PROJECTION_PRIMARY:[Ljava/lang/String;

    .line 42
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 43
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 44
    const-string/jumbo v1, "data2"

    aput-object v1, v0, v4

    .line 45
    const-string/jumbo v1, "data3"

    aput-object v1, v0, v5

    .line 46
    const-string/jumbo v1, "data1"

    aput-object v1, v0, v6

    .line 47
    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v7

    .line 48
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "display_name_alt"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "mimetype"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "sort_key"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "sort_key_alt"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 42
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/EmailPickMode;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;-><init>(Landroid/content/Intent;)V

    .line 65
    const-string/jumbo v0, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const v0, 0x49600010    # 917505.0f

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/EmailPickMode;->mMode:I

    .line 63
    :goto_0
    return-void

    .line 68
    :cond_0
    const v0, 0x49200010    # 655361.0f

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/EmailPickMode;->mMode:I

    goto :goto_0
.end method

.method private appendGroupSelection(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/EmailPickMode;->getGroupMembers()[J

    move-result-object v0

    .line 114
    .local v0, "groupMemIds":[J
    if-eqz v0, :cond_2

    array-length v3, v0

    if-lez v3, :cond_2

    .line 115
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 116
    const-string/jumbo v3, " AND "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_0
    const-string/jumbo v3, "contact_id"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string/jumbo v3, " IN ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-wide v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 123
    .local v1, "id":Ljava/lang/Long;
    const-string/jumbo v4, "\'"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    const-string/jumbo v4, "\',"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "id":Ljava/lang/Long;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 129
    const-string/jumbo v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_2
    return-void
.end method


# virtual methods
.method public getFilterUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "directoryId"    # J

    .prologue
    .line 84
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getModeConfiguration()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/EmailPickMode;->mMode:I

    return v0
.end method

.method public getProjection(Z)[Ljava/lang/String;
    .locals 1
    .param p1, "sortPrimary"    # Z

    .prologue
    .line 74
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/EmailPickMode;->PROJECTION_PRIMARY:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/EmailPickMode;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getQueryHintResourceId()I
    .locals 1

    .prologue
    .line 140
    const v0, 0x7f09022e

    return v0
.end method

.method public getQueryUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "directoryId"    # J

    .prologue
    .line 79
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

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
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/EmailPickMode;->isFavorite()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const-string/jumbo v1, "starred"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string/jumbo v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/EmailPickMode;->isSpecificGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/EmailPickMode;->appendGroupSelection(Ljava/lang/StringBuilder;)V

    .line 108
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 103
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 104
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_2
    const-string/jumbo v1, "in_visible_group = 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getTitleResourceId()I
    .locals 1

    .prologue
    .line 150
    const v0, 0x7f090269

    return v0
.end method

.method public getUriFromPosition(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;IJ)Landroid/net/Uri;
    .locals 5
    .param p1, "adapter"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;
    .param p2, "position"    # I
    .param p3, "directoryId"    # J

    .prologue
    .line 155
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_0

    .line 156
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getItemId(I)J

    move-result-wide v0

    .line 157
    .local v0, "id":J
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 159
    .end local v0    # "id":J
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public isPickContact()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public isValidSearchString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 145
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
