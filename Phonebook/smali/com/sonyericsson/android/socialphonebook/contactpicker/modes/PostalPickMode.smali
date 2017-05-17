.class public Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PostalPickMode;
.super Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;
.source "PostalPickMode.java"


# static fields
.field private static final PROJECTION_ALTERNATIVE:[Ljava/lang/String;

.field private static final PROJECTION_PRIMARY:[Ljava/lang/String;


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
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PostalPickMode;->PROJECTION_PRIMARY:[Ljava/lang/String;

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
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PostalPickMode;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;-><init>(Landroid/content/Intent;)V

    .line 24
    return-void
.end method

.method private appendGroupSelection(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PostalPickMode;->getGroupMembers()[J

    move-result-object v0

    .line 98
    .local v0, "groupMemIds":[J
    if-eqz v0, :cond_2

    array-length v3, v0

    if-lez v3, :cond_2

    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 100
    const-string/jumbo v3, " AND "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_0
    const-string/jumbo v3, "contact_id"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string/jumbo v3, " IN ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-wide v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 107
    .local v1, "id":Ljava/lang/Long;
    const-string/jumbo v4, "\'"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    const-string/jumbo v4, "\',"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "id":Ljava/lang/Long;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 113
    const-string/jumbo v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_2
    return-void
.end method


# virtual methods
.method public getFilterUri(J)Landroid/net/Uri;
    .locals 2
    .param p1, "directoryId"    # J

    .prologue
    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Postal does not support filter yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getModeConfiguration()I
    .locals 1

    .prologue
    .line 119
    const v0, 0x69000040

    return v0
.end method

.method public getProjection(Z)[Ljava/lang/String;
    .locals 1
    .param p1, "sortPrimary"    # Z

    .prologue
    .line 58
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PostalPickMode;->PROJECTION_PRIMARY:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PostalPickMode;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getQueryUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "directoryId"    # J

    .prologue
    .line 63
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getSelection(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PostalPickMode;->isFavorite()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const-string/jumbo v1, "starred"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string/jumbo v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PostalPickMode;->isSpecificGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PostalPickMode;->appendGroupSelection(Ljava/lang/StringBuilder;)V

    .line 92
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 87
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 88
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_2
    const-string/jumbo v1, "in_visible_group = 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getUriFromPosition(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;IJ)Landroid/net/Uri;
    .locals 5
    .param p1, "adapter"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;
    .param p2, "position"    # I
    .param p3, "directoryId"    # J

    .prologue
    .line 125
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_0

    .line 126
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getItemId(I)J

    move-result-wide v0

    .line 127
    .local v0, "id":J
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 129
    .end local v0    # "id":J
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public isPickContact()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method
