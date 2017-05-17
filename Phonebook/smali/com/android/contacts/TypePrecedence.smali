.class public final Lcom/android/contacts/TypePrecedence;
.super Ljava/lang/Object;
.source "TypePrecedence.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TYPE_PRECEDENCE_EMAIL:[I

.field private static final TYPE_PRECEDENCE_IM:[I

.field private static final TYPE_PRECEDENCE_ORG:[I

.field private static final TYPE_PRECEDENCE_PHONES:[I

.field private static final TYPE_PRECEDENCE_POSTAL:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 47
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_PHONES:[I

    .line 58
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_EMAIL:[I

    .line 64
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_POSTAL:[I

    .line 70
    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_IM:[I

    .line 76
    filled-new-array {v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_ORG:[I

    .line 41
    return-void

    .line 47
    :array_0
    .array-data 4
        0x0
        0xc
        0x2
        0x1
        0x3
        0x7
        0x5
        0x4
        0x6
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypePrecedence(Ljava/lang/String;I)I
    .locals 3
    .param p0, "mimetype"    # Ljava/lang/String;
    .param p1, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    invoke-static {p0}, Lcom/android/contacts/TypePrecedence;->getTypePrecedenceList(Ljava/lang/String;)[I

    move-result-object v1

    .line 91
    .local v1, "typePrecedence":[I
    if-nez v1, :cond_0

    .line 92
    const/4 v2, -0x1

    return v2

    .line 95
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 96
    aget v2, v1, v0

    if-ne v2, p1, :cond_1

    .line 97
    return v0

    .line 95
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_2
    array-length v2, v1

    return v2
.end method

.method private static getTypePrecedenceList(Ljava/lang/String;)[I
    .locals 1
    .param p0, "mimetype"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    const-string/jumbo v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_PHONES:[I

    return-object v0

    .line 107
    :cond_0
    const-string/jumbo v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    sget-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_EMAIL:[I

    return-object v0

    .line 109
    :cond_1
    const-string/jumbo v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    sget-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_POSTAL:[I

    return-object v0

    .line 111
    :cond_2
    const-string/jumbo v0, "vnd.android.cursor.item/im"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    sget-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_IM:[I

    return-object v0

    .line 113
    :cond_3
    const-string/jumbo v0, "vnd.android.cursor.item/video-chat-address"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    sget-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_IM:[I

    return-object v0

    .line 115
    :cond_4
    const-string/jumbo v0, "vnd.android.cursor.item/organization"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 116
    sget-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_ORG:[I

    return-object v0

    .line 118
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method
