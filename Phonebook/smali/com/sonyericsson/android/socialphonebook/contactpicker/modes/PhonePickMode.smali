.class public Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;
.super Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;
.source "PhonePickMode.java"


# static fields
.field private static final MODE_PICK_PHONE:I = 0x49200008

.field private static final MODE_PICK_PHONE_LOCAL:I = 0x49000008

.field private static final PROJECTION_ALTERNATIVE:[Ljava/lang/String;

.field private static final PROJECTION_PRIMARY:[Ljava/lang/String;


# instance fields
.field private mModeConfiguration:I

.field private mShortcutAction:Ljava/lang/String;

.field private mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 64
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 65
    const-string/jumbo v1, "data2"

    aput-object v1, v0, v4

    .line 66
    const-string/jumbo v1, "data3"

    aput-object v1, v0, v5

    .line 67
    const-string/jumbo v1, "data1"

    aput-object v1, v0, v6

    .line 68
    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v7

    .line 69
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 72
    const-string/jumbo v1, "mimetype"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "sort_key"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "sort_key_alt"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 63
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;->PROJECTION_PRIMARY:[Ljava/lang/String;

    .line 77
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 78
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 79
    const-string/jumbo v1, "data2"

    aput-object v1, v0, v4

    .line 80
    const-string/jumbo v1, "data3"

    aput-object v1, v0, v5

    .line 81
    const-string/jumbo v1, "data1"

    aput-object v1, v0, v6

    .line 82
    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v7

    .line 83
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "display_name_alt"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "mimetype"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "sort_key"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "sort_key_alt"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 77
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v2, 0x49200008    # 655360.5f

    .line 44
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;-><init>(Landroid/content/Intent;)V

    .line 39
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;->mTitleId:I

    .line 41
    const v1, 0x49000008    # 524288.5f

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;->mModeConfiguration:I

    .line 45
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v1, "alias.DialShortcut"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    const-string/jumbo v1, "android.intent.action.CALL"

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;->mShortcutAction:Ljava/lang/String;

    .line 49
    const v1, 0x7f090061

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;->mTitleId:I

    .line 50
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;->mModeConfiguration:I

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string/jumbo v1, "alias.MessageShortcut"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const-string/jumbo v1, "android.intent.action.SENDTO"

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;->mShortcutAction:Ljava/lang/String;

    .line 53
    const v1, 0x7f090062

    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;->mTitleId:I

    .line 54
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;->mModeConfiguration:I

    goto :goto_0
.end method

.method private appendGroupSelection(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;->getGroupMembers()[J

    move-result-object v0

    .line 133
    .local v0, "groupMemIds":[J
    if-eqz v0, :cond_2

    array-length v3, v0

    if-lez v3, :cond_2

    .line 134
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 135
    const-string/jumbo v3, " AND "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_0
    const-string/jumbo v3, "contact_id"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string/jumbo v3, " IN ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-wide v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 142
    .local v1, "id":Ljava/lang/Long;
    const-string/jumbo v4, "\'"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    const-string/jumbo v4, "\',"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "id":Ljava/lang/Long;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 148
    const-string/jumbo v2, ")"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_2
    return-void
.end method


# virtual methods
.method public getActivityTitle()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;->mTitleId:I

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/BasePickMode;->getActivityTitle()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;->mTitleId:I

    goto :goto_0
.end method

.method public getFilterUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "directoryId"    # J

    .prologue
    .line 103
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected getModeConfiguration()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;->mModeConfiguration:I

    return v0
.end method

.method public getProjection(Z)[Ljava/lang/String;
    .locals 1
    .param p1, "sortPrimary"    # Z

    .prologue
    .line 93
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;->PROJECTION_PRIMARY:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getQueryUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "directoryId"    # J

    .prologue
    .line 98
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public getSelection(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;->isFavorite()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const-string/jumbo v1, "starred"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;->isSpecificGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;->appendGroupSelection(Ljava/lang/StringBuilder;)V

    .line 127
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 122
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 123
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_2
    const-string/jumbo v1, "in_visible_group = 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getShortcutAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;->mShortcutAction:Ljava/lang/String;

    return-object v0
.end method

.method public getUriFromPosition(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;IJ)Landroid/net/Uri;
    .locals 5
    .param p1, "adapter"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;
    .param p2, "position"    # I
    .param p3, "directoryId"    # J

    .prologue
    .line 164
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_0

    .line 165
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getItemId(I)J

    move-result-wide v0

    .line 166
    .local v0, "id":J
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 168
    .end local v0    # "id":J
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public isPickContact()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method
