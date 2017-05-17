.class public Lcom/android/vcard/VCardParser_V30;
.super Lcom/android/vcard/VCardParser;
.source "VCardParser_V30.java"


# static fields
.field static final sAcceptableEncoding:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sKnownPropertyNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V30;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1e

    new-array v1, v1, [Ljava/lang/String;

    .line 44
    const-string/jumbo v2, "BEGIN"

    aput-object v2, v1, v4

    const-string/jumbo v2, "END"

    aput-object v2, v1, v5

    const-string/jumbo v2, "LOGO"

    aput-object v2, v1, v6

    const-string/jumbo v2, "PHOTO"

    aput-object v2, v1, v7

    const-string/jumbo v2, "LABEL"

    aput-object v2, v1, v8

    const-string/jumbo v2, "FN"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "TITLE"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "SOUND"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 45
    const-string/jumbo v2, "VERSION"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "TEL"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "EMAIL"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "TZ"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "GEO"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "NOTE"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string/jumbo v2, "URL"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 46
    const-string/jumbo v2, "BDAY"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string/jumbo v2, "ROLE"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string/jumbo v2, "REV"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string/jumbo v2, "UID"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string/jumbo v2, "KEY"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string/jumbo v2, "MAILER"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 47
    const-string/jumbo v2, "NAME"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string/jumbo v2, "PROFILE"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string/jumbo v2, "SOURCE"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string/jumbo v2, "NICKNAME"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string/jumbo v2, "CLASS"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    .line 48
    const-string/jumbo v2, "SORT-STRING"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string/jumbo v2, "CATEGORIES"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string/jumbo v2, "PRODID"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    .line 49
    const-string/jumbo v2, "IMPP"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    .line 43
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 42
    sput-object v0, Lcom/android/vcard/VCardParser_V30;->sKnownPropertyNameSet:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/String;

    .line 65
    const-string/jumbo v2, "7BIT"

    aput-object v2, v1, v4

    .line 66
    const-string/jumbo v2, "8BIT"

    aput-object v2, v1, v5

    .line 67
    const-string/jumbo v2, "BASE64"

    aput-object v2, v1, v6

    .line 68
    const-string/jumbo v2, "B"

    aput-object v2, v1, v7

    .line 64
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 63
    sput-object v0, Lcom/android/vcard/VCardParser_V30;->sAcceptableEncoding:Ljava/util/Set;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/vcard/VCardParser;-><init>()V

    .line 73
    new-instance v0, Lcom/android/vcard/VCardParserImpl_V30;

    invoke-direct {v0}, Lcom/android/vcard/VCardParserImpl_V30;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardParser_V30;->mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V30;

    .line 72
    return-void
.end method
