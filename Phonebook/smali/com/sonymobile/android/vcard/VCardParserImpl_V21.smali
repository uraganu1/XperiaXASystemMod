.class Lcom/sonymobile/android/vcard/VCardParserImpl_V21;
.super Ljava/lang/Object;
.source "VCardParserImpl_V21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "8BIT"

.field private static final LOG_TAG:Ljava/lang/String; = "vCard"

.field private static final STATE_GROUP_OR_PROPERTY_NAME:I = 0x0

.field private static final STATE_PARAMS:I = 0x1

.field private static final STATE_PARAMS_IN_DQUOTE:I = 0x2


# instance fields
.field private mCanceled:Z

.field protected mCurrentCharset:Ljava/lang/String;

.field protected mCurrentEncoding:Ljava/lang/String;

.field protected final mIntermediateCharset:Ljava/lang/String;

.field private final mInterpreterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardInterpreter;",
            ">;"
        }
    .end annotation
.end field

.field protected mReader:Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

.field protected final mUnknownTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUnknownValueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVCardType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 162
    sget v0, Lcom/sonymobile/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    invoke-direct {p0, v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;-><init>(I)V

    .line 163
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    .line 157
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    .line 166
    iput p1, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mVCardType:I

    const-string/jumbo v0, "ISO-8859-1"

    .line 167
    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    .line 168
    return-void
.end method

.method private getPotentialMultiline(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 829
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->peekLine()Ljava/lang/String;

    move-result-object v1

    .line 833
    if-nez v1, :cond_1

    .line 850
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 833
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    invoke-direct {p0, v1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getPropertyNameUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 838
    if-nez v2, :cond_0

    .line 846
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    const-string/jumbo v2, " "

    .line 847
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getPropertyNameUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const-string/jumbo v0, ":"

    .line 909
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 910
    if-gt v0, v2, :cond_0

    const/4 v0, 0x0

    .line 924
    return-object v0

    :cond_0
    const-string/jumbo v1, ";"

    .line 911
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 915
    if-eq v0, v2, :cond_2

    .line 917
    if-eq v1, v2, :cond_1

    .line 920
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 922
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v1

    .line 916
    goto :goto_0
.end method

.method private getQuotedPrintablePart(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3d

    const/4 v4, 0x0

    .line 787
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 815
    return-object p1

    .line 789
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 790
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1

    .line 792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 793
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\r\n"

    .line 794
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 798
    if-eqz v0, :cond_2

    .line 801
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 809
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 799
    :cond_2
    new-instance v0, Lcom/sonymobile/android/vcard/exception/VCardException;

    const-string/jumbo v1, "File ended during parsing a Quoted-Printable String"

    invoke-direct {v0, v1}, Lcom/sonymobile/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 803
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 804
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_4

    .line 806
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\r\n"

    .line 807
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private handleAdrOrgN(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/android/vcard/exception/VCardException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 718
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 719
    invoke-direct {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->shouldNotUnescape()Z

    move-result v2

    .line 723
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string/jumbo v3, "QUOTED-PRINTABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 743
    invoke-direct {p0, p2}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getPotentialMultiline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 744
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v3

    invoke-static {v0, v3, v2}, Lcom/sonymobile/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v0

    .line 747
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 753
    :cond_0
    invoke-virtual {p1, v1}, Lcom/sonymobile/android/vcard/VCardProperty;->setValues(Ljava/util/List;)V

    .line 754
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 757
    return-void

    .line 726
    :cond_1
    invoke-direct {p0, p2}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getQuotedPrintablePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 730
    invoke-virtual {p1, v0}, Lcom/sonymobile/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v3

    invoke-static {v0, v3, v2}, Lcom/sonymobile/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v0

    .line 737
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 738
    invoke-static {v0, v4, p3, p4}, Lcom/sonymobile/android/vcard/VCardUtils;->parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 747
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 748
    invoke-static {v0, p3, p4, v2}, Lcom/sonymobile/android/vcard/VCardUtils;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 754
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardInterpreter;

    .line 755
    invoke-interface {v0, p1}, Lcom/sonymobile/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/sonymobile/android/vcard/VCardProperty;)V

    goto :goto_1
.end method

.method private handleNest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->parseItems()V

    .line 369
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    return-void

    .line 365
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardInterpreter;

    .line 366
    invoke-interface {v0}, Lcom/sonymobile/android/vcard/VCardInterpreter;->onEntryStarted()V

    goto :goto_0

    .line 369
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardInterpreter;

    .line 370
    invoke-interface {v0}, Lcom/sonymobile/android/vcard/VCardInterpreter;->onEntryEnded()V

    goto :goto_1
.end method

.method private isAsciiLetter(C)Z
    .locals 1

    .prologue
    const/16 v0, 0x61

    .line 573
    if-ge p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-ge p1, v0, :cond_3

    .line 576
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/16 v0, 0x7a

    .line 573
    if-gt p1, v0, :cond_0

    .line 574
    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/16 v0, 0x5a

    .line 573
    if-le p1, v0, :cond_2

    goto :goto_0
.end method

.method private parseItemInter(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p1}, Lcom/sonymobile/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AGENT"

    .line 344
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    invoke-virtual {p0, p2}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->isValidPropertyName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 354
    new-instance v0, Lcom/sonymobile/android/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown property name: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->handleAgent(Lcom/sonymobile/android/vcard/VCardProperty;)V

    .line 356
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "VERSION"

    .line 347
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 352
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->handlePropertyValue(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 349
    new-instance v1, Lcom/sonymobile/android/vcard/exception/VCardVersionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Incompatible version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " != "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sonymobile/android/vcard/exception/VCardVersionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseOneVCard()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "8BIT"

    .line 222
    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string/jumbo v0, "UTF-8"

    .line 223
    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mCurrentCharset:Ljava/lang/String;

    .line 226
    invoke-virtual {p0, v1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->readBeginVCard(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->parseItems()V

    .line 233
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 236
    const/4 v0, 0x1

    return v0

    .line 227
    :cond_0
    return v1

    .line 229
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardInterpreter;

    .line 230
    invoke-interface {v0}, Lcom/sonymobile/android/vcard/VCardInterpreter;->onEntryStarted()V

    goto :goto_0

    .line 233
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardInterpreter;

    .line 234
    invoke-interface {v0}, Lcom/sonymobile/android/vcard/VCardInterpreter;->onEntryEnded()V

    goto :goto_1
.end method

.method private shouldNotUnescape()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "SHIFT_JIS"

    .line 360
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mCurrentCharset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mVCardType:I

    const/high16 v2, -0x40000000    # -2.0f

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static unescapeCharacter(CI)Ljava/lang/String;
    .locals 1

    .prologue
    const/16 v0, 0x5c

    .line 969
    if-ne p0, v0, :cond_1

    .line 971
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0x3b

    .line 969
    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    const/16 v0, 0x6e

    .line 974
    if-ne p0, v0, :cond_4

    :cond_2
    const-string/jumbo v0, "\n"

    .line 975
    return-object v0

    :cond_3
    const/16 v0, 0x3c

    .line 969
    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_4
    const/16 v0, 0x4e

    .line 974
    if-eq p0, v0, :cond_2

    const/16 v0, 0x72

    .line 976
    if-ne p0, v0, :cond_6

    :cond_5
    const-string/jumbo v0, "\r"

    .line 977
    return-object v0

    :cond_6
    const/16 v0, 0x52

    .line 976
    if-eq p0, v0, :cond_5

    const/4 v0, 0x0

    .line 980
    return-object v0
.end method


# virtual methods
.method public addInterpreter(Lcom/sonymobile/android/vcard/VCardInterpreter;)V
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    return-void
.end method

.method public final declared-synchronized cancel()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "vCard"

    const-string/jumbo v1, "ParserImpl received cancel operation."

    .line 1079
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1081
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected constructPropertyData(Ljava/lang/String;)Lcom/sonymobile/android/vcard/VCardProperty;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x3b

    const/16 v9, 0x3a

    const/16 v8, 0x22

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 381
    new-instance v4, Lcom/sonymobile/android/vcard/VCardProperty;

    invoke-direct {v4}, Lcom/sonymobile/android/vcard/VCardProperty;-><init>()V

    .line 383
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 384
    if-gtz v5, :cond_1

    :cond_0
    move v3, v0

    move v1, v0

    .line 393
    :goto_0
    if-lt v3, v5, :cond_2

    .line 449
    new-instance v0, Lcom/sonymobile/android/vcard/exception/VCardInvalidLineException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid line: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/android/vcard/exception/VCardInvalidLineException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x23

    if-ne v1, v3, :cond_0

    .line 385
    new-instance v0, Lcom/sonymobile/android/vcard/exception/VCardInvalidCommentLineException;

    invoke-direct {v0}, Lcom/sonymobile/android/vcard/exception/VCardInvalidCommentLineException;-><init>()V

    throw v0

    .line 394
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-char v6, v6

    .line 395
    packed-switch v1, :pswitch_data_0

    .line 393
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 397
    :pswitch_0
    if-eq v6, v9, :cond_4

    const/16 v7, 0x2e

    .line 402
    if-eq v6, v7, :cond_6

    .line 410
    if-ne v6, v10, :cond_3

    .line 411
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-virtual {v4, v0}, Lcom/sonymobile/android/vcard/VCardProperty;->setName(Ljava/lang/String;)V

    .line 413
    add-int/lit8 v0, v3, 0x1

    move v1, v2

    .line 415
    goto :goto_1

    .line 398
    :cond_4
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-virtual {v4, v0}, Lcom/sonymobile/android/vcard/VCardProperty;->setName(Ljava/lang/String;)V

    .line 400
    add-int/lit8 v0, v5, -0x1

    if-lt v3, v0, :cond_5

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {v4, v0}, Lcom/sonymobile/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    .line 401
    return-object v4

    .line 400
    :cond_5
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 403
    :cond_6
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7

    .line 407
    invoke-virtual {v4, v0}, Lcom/sonymobile/android/vcard/VCardProperty;->addGroup(Ljava/lang/String;)V

    .line 409
    :goto_3
    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    :cond_7
    const-string/jumbo v0, "vCard"

    const-string/jumbo v6, "Empty group found. Ignoring."

    .line 405
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 420
    :pswitch_1
    if-eq v6, v8, :cond_8

    .line 426
    if-eq v6, v10, :cond_a

    .line 429
    if-ne v6, v9, :cond_3

    .line 430
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 431
    add-int/lit8 v0, v5, -0x1

    if-lt v3, v0, :cond_b

    const-string/jumbo v0, ""

    :goto_4
    invoke-virtual {v4, v0}, Lcom/sonymobile/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    .line 432
    return-object v4

    :cond_8
    const-string/jumbo v1, "2.1"

    .line 421
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_5
    const/4 v1, 0x2

    .line 425
    goto :goto_1

    :cond_9
    const-string/jumbo v1, "vCard"

    const-string/jumbo v6, "Double-quoted params found in vCard 2.1. Silently allow it"

    .line 422
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 427
    :cond_a
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 428
    add-int/lit8 v0, v3, 0x1

    goto/16 :goto_1

    .line 431
    :cond_b
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 437
    :pswitch_2
    if-ne v6, v8, :cond_3

    const-string/jumbo v1, "2.1"

    .line 438
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_6
    move v1, v2

    .line 442
    goto/16 :goto_1

    :cond_c
    const-string/jumbo v1, "vCard"

    const-string/jumbo v6, "Double-quoted params found in vCard 2.1. Silently allow it"

    .line 439
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 395
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getAvailableEncodingSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1010
    sget-object v0, Lcom/sonymobile/android/vcard/VCardParser_V21;->sAvailableEncoding:Ljava/util/Set;

    return-object v0
.end method

.method protected getBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 855
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->peekLine()Ljava/lang/String;

    move-result-object v1

    .line 859
    if-eqz v1, :cond_2

    .line 870
    invoke-direct {p0, v1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getPropertyNameUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 871
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getKnownPropertyNameSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const-string/jumbo v2, "vCard"

    const-string/jumbo v3, "Found a next property during parsing a BASE64 string, which must not contain semi-colon or colon. Treat the line as next property."

    .line 873
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "vCard"

    .line 876
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Problematic line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 860
    :cond_2
    new-instance v0, Lcom/sonymobile/android/vcard/exception/VCardException;

    const-string/jumbo v1, "File ended during parsing BASE64 binary"

    invoke-direct {v0, v1}, Lcom/sonymobile/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string/jumbo v3, "X-ANDROID-CUSTOM"

    .line 871
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 881
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    .line 883
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 889
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected getCurrentCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mCurrentCharset:Ljava/lang/String;

    return-object v0
.end method

.method protected getDefaultCharset()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "UTF-8"

    .line 1018
    return-object v0
.end method

.method protected getDefaultEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "8BIT"

    .line 1014
    return-object v0
.end method

.method protected getKnownPropertyNameSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 998
    sget-object v0, Lcom/sonymobile/android/vcard/VCardParser_V21;->sKnownPropertyNameSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getKnownTypeSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1002
    sget-object v0, Lcom/sonymobile/android/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getKnownValueSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1006
    sget-object v0, Lcom/sonymobile/android/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mReader:Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNonEmptyLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 207
    return-object v0

    .line 205
    :cond_1
    new-instance v0, Lcom/sonymobile/android/vcard/exception/VCardException;

    const-string/jumbo v1, "Reached end of buffer."

    invoke-direct {v0, v1}, Lcom/sonymobile/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getVersion()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 987
    return v0
.end method

.method protected getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "2.1"

    .line 994
    return-object v0
.end method

.method protected handleAgent(Lcom/sonymobile/android/vcard/VCardProperty;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 936
    invoke-virtual {p1}, Lcom/sonymobile/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "BEGIN:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    new-instance v0, Lcom/sonymobile/android/vcard/exception/VCardAgentNotSupportedException;

    const-string/jumbo v1, "AGENT Property is not supported now."

    invoke-direct {v0, v1}, Lcom/sonymobile/android/vcard/exception/VCardAgentNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 941
    return-void

    .line 938
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardInterpreter;

    .line 939
    invoke-interface {v0, p1}, Lcom/sonymobile/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/sonymobile/android/vcard/VCardProperty;)V

    goto :goto_0
.end method

.method protected handleAnyParam(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 584
    invoke-virtual {p1, p2, p3}, Lcom/sonymobile/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method protected handleCharset(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 542
    iput-object p2, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mCurrentCharset:Ljava/lang/String;

    const-string/jumbo v0, "CHARSET"

    .line 543
    invoke-virtual {p1, v0, p2}, Lcom/sonymobile/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method protected handleEncoding(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getAvailableEncodingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "ENCODING"

    .line 526
    invoke-virtual {p1, v0, p2}, Lcom/sonymobile/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 532
    return-void

    :cond_1
    const-string/jumbo v0, "X-"

    .line 524
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Lcom/sonymobile/android/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown encoding \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleLanguage(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "-"

    .line 551
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 552
    array-length v1, v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 555
    aget-object v3, v2, v0

    .line 556
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v0

    .line 557
    :goto_0
    if-lt v1, v4, :cond_1

    const/4 v1, 0x1

    .line 562
    aget-object v1, v2, v1

    .line 563
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 564
    :goto_1
    if-lt v0, v2, :cond_3

    const-string/jumbo v0, "LANGUAGE"

    .line 569
    invoke-virtual {p1, v0, p2}, Lcom/sonymobile/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    return-void

    .line 553
    :cond_0
    new-instance v0, Lcom/sonymobile/android/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid Language: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->isAsciiLetter(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 559
    :cond_2
    new-instance v0, Lcom/sonymobile/android/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid Language: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->isAsciiLetter(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 566
    :cond_4
    new-instance v0, Lcom/sonymobile/android/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid Language: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleParamWithoutName(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 489
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->handleType(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method protected handleParams(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const-string/jumbo v0, "="

    .line 461
    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 462
    array-length v1, v0

    if-eq v1, v3, :cond_0

    .line 481
    aget-object v0, v0, v2

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->handleParamWithoutName(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 483
    :goto_0
    return-void

    .line 463
    :cond_0
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 464
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "TYPE"

    .line 465
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "VALUE"

    .line 467
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "ENCODING"

    .line 469
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "CHARSET"

    .line 471
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "LANGUAGE"

    .line 473
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "X-"

    .line 475
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 478
    new-instance v0, Lcom/sonymobile/android/vcard/exception/VCardException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->handleType(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->handleValue(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->handleEncoding(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->handleCharset(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->handleLanguage(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :cond_6
    invoke-virtual {p0, p1, v1, v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->handleAnyParam(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected handlePropertyValue(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 589
    invoke-virtual {p1}, Lcom/sonymobile/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 590
    invoke-virtual {p1}, Lcom/sonymobile/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "ISO-8859-1"

    const-string/jumbo v0, "CHARSET"

    .line 592
    invoke-virtual {p1, v0}, Lcom/sonymobile/android/vcard/VCardProperty;->getParameters(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 594
    if-nez v0, :cond_1

    move-object v0, v1

    .line 596
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    const-string/jumbo v4, "ADR"

    .line 601
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const-string/jumbo v1, "ISO-8859-1"

    .line 604
    invoke-direct {p0, p1, v2, v1, v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->handleAdrOrgN(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    return-void

    .line 594
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "UTF-8"

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "ORG"

    .line 601
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "N"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 608
    iget-object v4, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string/jumbo v5, "QUOTED-PRINTABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 616
    :cond_4
    invoke-direct {p0, v2}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getQuotedPrintablePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ISO-8859-1"

    .line 617
    invoke-static {v1, v7, v2, v0}, Lcom/sonymobile/android/vcard/VCardUtils;->parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    invoke-virtual {p1, v1}, Lcom/sonymobile/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    .line 621
    new-array v1, v8, [Ljava/lang/String;

    aput-object v0, v1, v7

    invoke-virtual {p1, v1}, Lcom/sonymobile/android/vcard/VCardProperty;->setValues([Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 713
    :cond_5
    return-void

    :cond_6
    const-string/jumbo v4, "FN"

    .line 608
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 625
    :cond_7
    :goto_3
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string/jumbo v4, "BASE64"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 630
    :cond_8
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getBase64(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 v1, 0x0

    .line 632
    :try_start_1
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonymobile/android/vcard/VCardProperty;->setByteValue([B)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 636
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardInterpreter;

    .line 637
    invoke-interface {v0, p1}, Lcom/sonymobile/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/sonymobile/android/vcard/VCardProperty;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 644
    :catch_0
    move-exception v0

    const-string/jumbo v0, "vCard"

    const-string/jumbo v1, "OutOfMemoryError happened during parsing BASE64 data!"

    .line 640
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardInterpreter;

    .line 642
    invoke-interface {v0, p1}, Lcom/sonymobile/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/sonymobile/android/vcard/VCardProperty;)V

    goto :goto_5

    :cond_9
    const-string/jumbo v3, "ENCODING"

    .line 608
    invoke-virtual {p1, v3}, Lcom/sonymobile/android/vcard/VCardProperty;->getParameters(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-static {v2}, Lcom/sonymobile/android/vcard/VCardUtils;->appearsLikeAndroidVCardQuotedPrintable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    .line 622
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardInterpreter;

    .line 623
    invoke-interface {v0, p1}, Lcom/sonymobile/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/sonymobile/android/vcard/VCardProperty;)V

    goto :goto_2

    .line 625
    :cond_b
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string/jumbo v4, "B"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 646
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string/jumbo v4, "7BIT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 675
    :cond_c
    :goto_6
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v3

    if-eqz v3, :cond_f

    move-object v1, v2

    .line 704
    :goto_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 705
    invoke-virtual {p0, v1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "ISO-8859-1"

    invoke-static {v1, v3, v0}, Lcom/sonymobile/android/vcard/VCardUtils;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    invoke-virtual {p1, v2}, Lcom/sonymobile/android/vcard/VCardProperty;->setValues(Ljava/util/List;)V

    .line 709
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardInterpreter;

    .line 710
    invoke-interface {v0, p1}, Lcom/sonymobile/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/sonymobile/android/vcard/VCardProperty;)V

    goto :goto_8

    .line 635
    :catch_1
    move-exception v0

    .line 634
    :try_start_3
    new-instance v0, Lcom/sonymobile/android/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Decode error on base64 photo: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    .line 646
    :cond_d
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string/jumbo v4, "8BIT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string/jumbo v4, "X-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string/jumbo v3, "vCard"

    const-string/jumbo v4, "The encoding \"%s\" is unsupported by vCard %s"

    const/4 v5, 0x2

    .line 648
    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 688
    :cond_e
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    .line 690
    if-eqz v1, :cond_12

    .line 694
    :goto_9
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    :cond_f
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->peekLine()Ljava/lang/String;

    move-result-object v3

    .line 685
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 699
    :cond_10
    :goto_a
    if-nez v1, :cond_13

    move-object v1, v2

    goto/16 :goto_7

    .line 685
    :cond_11
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_10

    const-string/jumbo v4, "END:VCARD"

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_a

    .line 691
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 692
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 700
    :cond_13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7
.end method

.method protected handleType(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 496
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getKnownTypeSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v0, "TYPE"

    .line 502
    invoke-virtual {p1, v0, p2}, Lcom/sonymobile/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    return-void

    :cond_1
    const-string/jumbo v0, "X-"

    .line 496
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "vCard"

    const-string/jumbo v1, "TYPE unsupported by %s: "

    const/4 v2, 0x2

    .line 500
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected handleValue(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 509
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getKnownValueSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v0, "VALUE"

    .line 516
    invoke-virtual {p1, v0, p2}, Lcom/sonymobile/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    return-void

    :cond_1
    const-string/jumbo v0, "X-"

    .line 509
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "vCard"

    const-string/jumbo v1, "The value unsupported by TYPE of %s: "

    const/4 v2, 0x2

    .line 513
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected isValidPropertyName(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getKnownPropertyNameSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "X-"

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "vCard"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Property name unsupported by vCard 2.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected maybeUnescapeCharacter(C)Ljava/lang/String;
    .locals 1

    .prologue
    .line 961
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mVCardType:I

    invoke-static {p1, v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->unescapeCharacter(CI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 951
    return-object p1
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 1030
    if-eqz p1, :cond_1

    .line 1034
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1035
    new-instance v1, Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-direct {v1, v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mReader:Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    .line 1037
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1038
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1044
    :cond_0
    monitor-enter p0

    .line 1045
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mCanceled:Z

    if-nez v0, :cond_3

    .line 1049
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    invoke-direct {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->parseOneVCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1055
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1058
    return-void

    .line 1031
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "InputStream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1038
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardInterpreter;

    .line 1039
    invoke-interface {v0}, Lcom/sonymobile/android/vcard/VCardInterpreter;->onVCardStarted()V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v0, "vCard"

    const-string/jumbo v1, "Cancel request has come. exitting parse operation."

    .line 1046
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    monitor-exit p0

    goto :goto_1

    .line 1049
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1055
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardInterpreter;

    .line 1056
    invoke-interface {v0}, Lcom/sonymobile/android/vcard/VCardInterpreter;->onVCardEnded()V

    goto :goto_2
.end method

.method protected parseItem()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string/jumbo v0, "8BIT"

    .line 315
    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 317
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getNonEmptyLine()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-virtual {p0, v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->constructPropertyData(Ljava/lang/String;)Lcom/sonymobile/android/vcard/VCardProperty;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/sonymobile/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-virtual {v0}, Lcom/sonymobile/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "BEGIN"

    .line 323
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "END"

    .line 329
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 336
    invoke-direct {p0, v0, v1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->parseItemInter(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 338
    :goto_0
    return v4

    :cond_0
    const-string/jumbo v0, "VCARD"

    .line 324
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    new-instance v0, Lcom/sonymobile/android/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown BEGIN type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->handleNest()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "VCARD"

    .line 330
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 333
    new-instance v0, Lcom/sonymobile/android/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown END type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected parseItems()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 286
    :goto_0
    if-eqz v0, :cond_0

    .line 305
    return-void

    .line 288
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->parseItem()Z
    :try_end_0
    .catch Lcom/sonymobile/android/vcard/exception/VCardInvalidCommentLineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/android/vcard/exception/VCardInvalidLineException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v2

    const-string/jumbo v2, "vCard"

    const-string/jumbo v3, "Invalid line which looks like some comment was found. Ignored."

    .line 290
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    :catch_1
    move-exception v0

    const-string/jumbo v2, "vCard"

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignored."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 303
    goto :goto_0
.end method

.method public parseOne(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 1061
    if-eqz p1, :cond_0

    .line 1065
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1066
    new-instance v1, Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-direct {v1, v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mReader:Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    .line 1068
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1069
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1072
    invoke-direct {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->parseOneVCard()Z

    .line 1073
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1076
    return-void

    .line 1062
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "InputStream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1069
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardInterpreter;

    .line 1070
    invoke-interface {v0}, Lcom/sonymobile/android/vcard/VCardInterpreter;->onVCardStarted()V

    goto :goto_0

    .line 1073
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardInterpreter;

    .line 1074
    invoke-interface {v0}, Lcom/sonymobile/android/vcard/VCardInterpreter;->onVCardEnded()V

    goto :goto_1
.end method

.method protected peekLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->mReader:Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->peekLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readBeginVCard(Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_2

    .line 252
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, ":"

    .line 256
    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 257
    array-length v2, v1

    .line 263
    if-eq v2, v6, :cond_3

    .line 266
    :cond_1
    if-eqz p1, :cond_4

    .line 270
    if-nez p1, :cond_0

    .line 272
    new-instance v0, Lcom/sonymobile/android/vcard/exception/VCardException;

    const-string/jumbo v1, "Reached where must not be reached."

    invoke-direct {v0, v1}, Lcom/sonymobile/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_2
    return v4

    .line 263
    :cond_3
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "BEGIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    return v5

    .line 267
    :cond_4
    new-instance v1, Lcom/sonymobile/android/vcard/exception/VCardException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected String \"BEGIN:VCARD\" did not come (Instead, \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\" came)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sonymobile/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
