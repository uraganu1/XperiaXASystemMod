.class public Lcom/sonymobile/android/vcard/VCardParser_V40;
.super Lcom/sonymobile/android/vcard/VCardParser;
.source "VCardParser_V40.java"


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
.field private final mVCardParserImpl:Lcom/sonymobile/android/vcard/VCardParserImpl_V40;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x26

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "BEGIN"

    aput-object v2, v1, v4

    const-string/jumbo v2, "END"

    aput-object v2, v1, v5

    const-string/jumbo v2, "VERSION"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string/jumbo v3, "SOURCE"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "KIND"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "FN"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "N"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "NICKNAME"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "PHOTO"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "BDAY"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "ANNIVERSARY"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "GENDER"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "ADR"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "TEL"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "EMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "IMPP"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "LANG"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "TZ"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "GEO"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string/jumbo v3, "TITLE"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "ROLE"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string/jumbo v3, "LOGO"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string/jumbo v3, "ORG"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string/jumbo v3, "MEMBER"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string/jumbo v3, "RELATED"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string/jumbo v3, "CATEGORIES"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string/jumbo v3, "NOTE"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string/jumbo v3, "PRODID"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string/jumbo v3, "REV"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string/jumbo v3, "SOUND"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string/jumbo v3, "UID"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string/jumbo v3, "CLIENTPIDMAP"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string/jumbo v3, "URL"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string/jumbo v3, "KEY"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string/jumbo v3, "FBURL"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string/jumbo v3, "CALENDRURI"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string/jumbo v3, "CALURI"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string/jumbo v3, "XML"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/vcard/VCardParser_V40;->sKnownPropertyNameSet:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "8BIT"

    aput-object v2, v1, v4

    const-string/jumbo v2, "B"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/vcard/VCardParser_V40;->sAcceptableEncoding:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sonymobile/android/vcard/VCardParser;-><init>()V

    .line 65
    new-instance v0, Lcom/sonymobile/android/vcard/VCardParserImpl_V40;

    invoke-direct {v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V40;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/sonymobile/android/vcard/VCardParserImpl_V40;

    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sonymobile/android/vcard/VCardParser;-><init>()V

    .line 69
    new-instance v0, Lcom/sonymobile/android/vcard/VCardParserImpl_V40;

    invoke-direct {v0, p1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V40;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/sonymobile/android/vcard/VCardParserImpl_V40;

    .line 70
    return-void
.end method


# virtual methods
.method public addInterpreter(Lcom/sonymobile/android/vcard/VCardInterpreter;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/sonymobile/android/vcard/VCardParserImpl_V40;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V40;->addInterpreter(Lcom/sonymobile/android/vcard/VCardInterpreter;)V

    .line 75
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/sonymobile/android/vcard/VCardParserImpl_V40;

    invoke-virtual {v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V40;->cancel()V

    .line 90
    return-void
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/sonymobile/android/vcard/VCardParserImpl_V40;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V40;->parse(Ljava/io/InputStream;)V

    .line 80
    return-void
.end method

.method public parseOne(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParser_V40;->mVCardParserImpl:Lcom/sonymobile/android/vcard/VCardParserImpl_V40;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V40;->parseOne(Ljava/io/InputStream;)V

    .line 85
    return-void
.end method
