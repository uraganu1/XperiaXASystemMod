.class public final Lcom/sonymobile/android/vcard/VCardParser_V21;
.super Lcom/sonymobile/android/vcard/VCardParser;
.source "VCardParser_V21.java"


# static fields
.field static final sAvailableEncoding:Ljava/util/Set;
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

.field static final sKnownTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sKnownValueSet:Ljava/util/Set;
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
.field private final mVCardParserImpl:Lcom/sonymobile/android/vcard/VCardParserImpl_V21;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 51
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/String;

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

    const/4 v2, 0x5

    const-string/jumbo v3, "FN"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "TITLE"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "SOUND"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "VERSION"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "TEL"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "EMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "TZ"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "GEO"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "NOTE"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "URL"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "BDAY"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "ROLE"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "REV"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "UID"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string/jumbo v3, "KEY"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "MAILER"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/vcard/VCardParser_V21;->sKnownPropertyNameSet:Ljava/util/Set;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x32

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "DOM"

    aput-object v2, v1, v4

    const-string/jumbo v2, "INTL"

    aput-object v2, v1, v5

    const-string/jumbo v2, "POSTAL"

    aput-object v2, v1, v6

    const-string/jumbo v2, "PARCEL"

    aput-object v2, v1, v7

    const-string/jumbo v2, "HOME"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "WORK"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "PREF"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "VOICE"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "FAX"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "MSG"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "CELL"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "PAGER"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "BBS"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "MODEM"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "CAR"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "ISDN"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "VIDEO"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "AOL"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "APPLELINK"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string/jumbo v3, "ATTMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "CIS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string/jumbo v3, "EWORLD"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string/jumbo v3, "INTERNET"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string/jumbo v3, "IBMMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string/jumbo v3, "MCIMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string/jumbo v3, "POWERSHARE"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string/jumbo v3, "PRODIGY"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string/jumbo v3, "TLX"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string/jumbo v3, "X400"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string/jumbo v3, "GIF"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string/jumbo v3, "CGM"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string/jumbo v3, "WMF"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string/jumbo v3, "BMP"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string/jumbo v3, "MET"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string/jumbo v3, "PMB"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string/jumbo v3, "DIB"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string/jumbo v3, "PICT"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string/jumbo v3, "TIFF"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string/jumbo v3, "PDF"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string/jumbo v3, "PS"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string/jumbo v3, "JPEG"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string/jumbo v3, "QTIME"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string/jumbo v3, "MPEG"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string/jumbo v3, "MPEG2"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string/jumbo v3, "AVI"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string/jumbo v3, "WAVE"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string/jumbo v3, "AIFF"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string/jumbo v3, "PCM"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string/jumbo v3, "X509"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string/jumbo v3, "PGP"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/Set;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "INLINE"

    aput-object v2, v1, v4

    const-string/jumbo v2, "URL"

    aput-object v2, v1, v5

    const-string/jumbo v2, "CONTENT-ID"

    aput-object v2, v1, v6

    const-string/jumbo v2, "CID"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/Set;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "7BIT"

    aput-object v2, v1, v4

    const-string/jumbo v2, "8BIT"

    aput-object v2, v1, v5

    const-string/jumbo v2, "QUOTED-PRINTABLE"

    aput-object v2, v1, v6

    const-string/jumbo v2, "BASE64"

    aput-object v2, v1, v7

    const-string/jumbo v2, "B"

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/vcard/VCardParser_V21;->sAvailableEncoding:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/sonymobile/android/vcard/VCardParser;-><init>()V

    .line 98
    new-instance v0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;

    invoke-direct {v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardParser_V21;->mVCardParserImpl:Lcom/sonymobile/android/vcard/VCardParserImpl_V21;

    .line 99
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/sonymobile/android/vcard/VCardParser;-><init>()V

    .line 102
    new-instance v0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;

    invoke-direct {v0, p1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardParser_V21;->mVCardParserImpl:Lcom/sonymobile/android/vcard/VCardParserImpl_V21;

    .line 103
    return-void
.end method


# virtual methods
.method public addInterpreter(Lcom/sonymobile/android/vcard/VCardInterpreter;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParser_V21;->mVCardParserImpl:Lcom/sonymobile/android/vcard/VCardParserImpl_V21;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->addInterpreter(Lcom/sonymobile/android/vcard/VCardInterpreter;)V

    .line 108
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParser_V21;->mVCardParserImpl:Lcom/sonymobile/android/vcard/VCardParserImpl_V21;

    invoke-virtual {v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->cancel()V

    .line 123
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
    .line 112
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParser_V21;->mVCardParserImpl:Lcom/sonymobile/android/vcard/VCardParserImpl_V21;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->parse(Ljava/io/InputStream;)V

    .line 113
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
    .line 117
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParser_V21;->mVCardParserImpl:Lcom/sonymobile/android/vcard/VCardParserImpl_V21;

    invoke-virtual {v0, p1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->parseOne(Ljava/io/InputStream;)V

    .line 118
    return-void
.end method
