.class public final Lcom/android/vcard/VCardParser_V21;
.super Lcom/android/vcard/VCardParser;
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
.field private final mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V21;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    new-instance v0, Ljava/util/HashSet;

    .line 49
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

    const-string/jumbo v2, "FN"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "TITLE"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "SOUND"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 50
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

    .line 51
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

    .line 49
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 47
    sput-object v0, Lcom/android/vcard/VCardParser_V21;->sKnownPropertyNameSet:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    .line 58
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

    const-string/jumbo v2, "WORK"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 59
    const-string/jumbo v2, "PREF"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "VOICE"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "FAX"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "MSG"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "CELL"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "PAGER"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "BBS"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 60
    const-string/jumbo v2, "MODEM"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string/jumbo v2, "CAR"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string/jumbo v2, "ISDN"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string/jumbo v2, "VIDEO"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string/jumbo v2, "AOL"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string/jumbo v2, "APPLELINK"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 61
    const-string/jumbo v2, "ATTMAIL"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string/jumbo v2, "CIS"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string/jumbo v2, "EWORLD"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string/jumbo v2, "INTERNET"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string/jumbo v2, "IBMMAIL"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    .line 62
    const-string/jumbo v2, "MCIMAIL"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string/jumbo v2, "POWERSHARE"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const-string/jumbo v2, "PRODIGY"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string/jumbo v2, "TLX"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string/jumbo v2, "X400"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const-string/jumbo v2, "GIF"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    .line 63
    const-string/jumbo v2, "CGM"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const-string/jumbo v2, "WMF"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    const-string/jumbo v2, "BMP"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    const-string/jumbo v2, "MET"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    const-string/jumbo v2, "PMB"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    const-string/jumbo v2, "DIB"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    const-string/jumbo v2, "PICT"

    const/16 v3, 0x24

    aput-object v2, v1, v3

    const-string/jumbo v2, "TIFF"

    const/16 v3, 0x25

    aput-object v2, v1, v3

    .line 64
    const-string/jumbo v2, "PDF"

    const/16 v3, 0x26

    aput-object v2, v1, v3

    const-string/jumbo v2, "PS"

    const/16 v3, 0x27

    aput-object v2, v1, v3

    const-string/jumbo v2, "JPEG"

    const/16 v3, 0x28

    aput-object v2, v1, v3

    const-string/jumbo v2, "QTIME"

    const/16 v3, 0x29

    aput-object v2, v1, v3

    const-string/jumbo v2, "MPEG"

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    const-string/jumbo v2, "MPEG2"

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    const-string/jumbo v2, "AVI"

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    .line 65
    const-string/jumbo v2, "WAVE"

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    const-string/jumbo v2, "AIFF"

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    const-string/jumbo v2, "PCM"

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    const-string/jumbo v2, "X509"

    const/16 v3, 0x30

    aput-object v2, v1, v3

    const-string/jumbo v2, "PGP"

    const/16 v3, 0x31

    aput-object v2, v1, v3

    .line 58
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 56
    sput-object v0, Lcom/android/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/Set;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    .line 72
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

    .line 71
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 70
    sput-object v0, Lcom/android/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/Set;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    .line 85
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "7BIT"

    aput-object v2, v1, v4

    .line 86
    const-string/jumbo v2, "8BIT"

    aput-object v2, v1, v5

    .line 87
    const-string/jumbo v2, "QUOTED-PRINTABLE"

    aput-object v2, v1, v6

    .line 88
    const-string/jumbo v2, "BASE64"

    aput-object v2, v1, v7

    .line 89
    const-string/jumbo v2, "B"

    aput-object v2, v1, v8

    .line 85
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 84
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 83
    sput-object v0, Lcom/android/vcard/VCardParser_V21;->sAvailableEncoding:Ljava/util/Set;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/vcard/VCardParser;-><init>()V

    .line 94
    new-instance v0, Lcom/android/vcard/VCardParserImpl_V21;

    invoke-direct {v0}, Lcom/android/vcard/VCardParserImpl_V21;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardParser_V21;->mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V21;

    .line 93
    return-void
.end method


# virtual methods
.method public addInterpreter(Lcom/android/vcard/VCardInterpreter;)V
    .locals 1
    .param p1, "interpreter"    # Lcom/android/vcard/VCardInterpreter;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/vcard/VCardParser_V21;->mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V21;

    invoke-virtual {v0, p1}, Lcom/android/vcard/VCardParserImpl_V21;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 102
    return-void
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/vcard/VCardParser_V21;->mVCardParserImpl:Lcom/android/vcard/VCardParserImpl_V21;

    invoke-virtual {v0, p1}, Lcom/android/vcard/VCardParserImpl_V21;->parse(Ljava/io/InputStream;)V

    .line 107
    return-void
.end method
