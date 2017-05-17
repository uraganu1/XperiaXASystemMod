.class public Lcom/sonymobile/android/vcard/VCardEntry;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/vcard/VCardEntry$1;,
        Lcom/sonymobile/android/vcard/VCardEntry$InsertOperationConstrutor;,
        Lcom/sonymobile/android/vcard/VCardEntry$ToStringIterator;,
        Lcom/sonymobile/android/vcard/VCardEntry$IsIgnorableIterator;,
        Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;,
        Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;,
        Lcom/sonymobile/android/vcard/VCardEntry$SipData;,
        Lcom/sonymobile/android/vcard/VCardEntry$AnniversaryData;,
        Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;,
        Lcom/sonymobile/android/vcard/VCardEntry$WebsiteData;,
        Lcom/sonymobile/android/vcard/VCardEntry$NoteData;,
        Lcom/sonymobile/android/vcard/VCardEntry$NicknameData;,
        Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;,
        Lcom/sonymobile/android/vcard/VCardEntry$ImData;,
        Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;,
        Lcom/sonymobile/android/vcard/VCardEntry$PostalData;,
        Lcom/sonymobile/android/vcard/VCardEntry$EmailData;,
        Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;,
        Lcom/sonymobile/android/vcard/VCardEntry$NameData;,
        Lcom/sonymobile/android/vcard/VCardEntry$EntryElement;,
        Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;
    }
.end annotation


# static fields
.field private static final DEFAULT_ORGANIZATION_TYPE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "vCard"

.field private static final sEmptyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private mAndroidCustomDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;",
            ">;"
        }
    .end annotation
.end field

.field private mAnniversary:Lcom/sonymobile/android/vcard/VCardEntry$AnniversaryData;

.field private mBirthday:Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation
.end field

.field private mImList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation
.end field

.field private final mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

.field private mNicknameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry$NicknameData;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry$NoteData;",
            ">;"
        }
    .end annotation
.end field

.field private mOrganizationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation
.end field

.field private mPostalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation
.end field

.field private mSipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry$SipData;",
            ">;"
        }
    .end annotation
.end field

.field private mUnknownXData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mVCardType:I

.field private mWebsiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry$WebsiteData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    .line 80
    sget-object v0, Lcom/sonymobile/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string/jumbo v1, "X-AIM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/sonymobile/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string/jumbo v1, "X-MSN"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/sonymobile/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string/jumbo v1, "X-YAHOO"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/sonymobile/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string/jumbo v1, "X-ICQ"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/sonymobile/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string/jumbo v1, "X-JABBER"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/sonymobile/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string/jumbo v1, "X-SKYPE-USERNAME"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/sonymobile/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string/jumbo v1, "X-GOOGLE-TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/sonymobile/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string/jumbo v1, "X-GOOGLE TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1852
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, -0x40000000    # -2.0f

    .line 1750
    invoke-direct {p0, v0}, Lcom/sonymobile/android/vcard/VCardEntry;-><init>(I)V

    .line 1751
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1754
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/android/vcard/VCardEntry;-><init>(ILandroid/accounts/Account;)V

    .line 1755
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 1

    .prologue
    .line 1757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1537
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    invoke-direct {v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    .line 1758
    iput p1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mVCardType:I

    .line 1759
    iput-object p2, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    .line 1760
    return-void
.end method

.method private addEmail(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1828
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    new-instance v1, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;

    invoke-direct {v1, p2, p1, p3, p4}, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1829
    return-void

    .line 1826
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    goto :goto_0
.end method

.method private addIm(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 7

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1971
    :goto_0
    iget-object v6, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$ImData;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/android/vcard/VCardEntry$ImData;-><init>(ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1972
    return-void

    .line 1969
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    goto :goto_0
.end method

.method private addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 8

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1848
    :goto_0
    iget-object v7, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1850
    return-void

    .line 1846
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    goto :goto_0
.end method

.method private addNickName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1821
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    new-instance v1, Lcom/sonymobile/android/vcard/VCardEntry$NicknameData;

    invoke-direct {v1, p1}, Lcom/sonymobile/android/vcard/VCardEntry$NicknameData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1822
    return-void

    .line 1819
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    goto :goto_0
.end method

.method private addNote(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1978
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    new-instance v1, Lcom/sonymobile/android/vcard/VCardEntry$NoteData;

    invoke-direct {v1, p1}, Lcom/sonymobile/android/vcard/VCardEntry$NoteData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1979
    return-void

    .line 1976
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    goto :goto_0
.end method

.method private addPhone(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1763
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 1766
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1767
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    .line 1769
    if-ne p1, v3, :cond_2

    :cond_0
    move-object v0, v2

    .line 1801
    :goto_1
    new-instance v1, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;

    invoke-direct {v1, v0, p1, p3, p4}, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 1802
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1803
    return-void

    .line 1764
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    goto :goto_0

    .line 1769
    :cond_2
    iget v3, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3}, Lcom/sonymobile/android/vcard/VCardConfig;->refrainPhoneNumberFormatting(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1777
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v0

    .line 1778
    :goto_2
    if-lt v3, v5, :cond_3

    .line 1793
    if-eqz v0, :cond_e

    .line 1798
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1779
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-char v6, v6

    const/16 v7, 0x70

    .line 1781
    if-ne v6, v7, :cond_6

    .line 1782
    :cond_4
    const/16 v0, 0x2c

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1778
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    const/16 v7, 0x50

    .line 1781
    if-eq v6, v7, :cond_4

    const/16 v7, 0x77

    .line 1784
    if-ne v6, v7, :cond_8

    .line 1785
    :cond_7
    const/16 v0, 0x3b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1786
    goto :goto_3

    :cond_8
    const/16 v7, 0x57

    .line 1784
    if-eq v6, v7, :cond_7

    const/16 v7, 0x30

    .line 1787
    if-le v7, v6, :cond_c

    :cond_9
    if-eqz v3, :cond_d

    :cond_a
    const/16 v7, 0x2a

    if-ne v6, v7, :cond_5

    invoke-direct {p0, v2, v3}, Lcom/sonymobile/android/vcard/VCardEntry;->indexAtTrailingStarHash(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1790
    :cond_b
    :goto_4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    const/16 v7, 0x39

    .line 1787
    if-gt v6, v7, :cond_9

    goto :goto_4

    :cond_d
    const/16 v7, 0x2b

    if-eq v6, v7, :cond_b

    const/16 v7, 0x23

    if-ne v6, v7, :cond_a

    goto :goto_4

    .line 1794
    :cond_e
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardUtils;->getPhoneNumberFormat(I)I

    move-result v0

    .line 1795
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sonymobile/android/vcard/VCardUtils$PhoneNumberUtilsPort;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private addPhotoBytes(Ljava/lang/String;[BZ)V
    .locals 2

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1985
    :goto_0
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;-><init>(Ljava/lang/String;[BZ)V

    .line 1986
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1987
    return-void

    .line 1983
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    goto :goto_0
.end method

.method private addPostal(ILjava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1835
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    iget v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {p2, p1, p3, p4, v1}, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->constructPostalData(Ljava/util/List;ILjava/lang/String;ZI)Lcom/sonymobile/android/vcard/VCardEntry$PostalData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1837
    return-void

    .line 1833
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    goto :goto_0
.end method

.method private addSip(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1814
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    new-instance v1, Lcom/sonymobile/android/vcard/VCardEntry$SipData;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/sonymobile/android/vcard/VCardEntry$SipData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1815
    return-void

    .line 1812
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    goto :goto_0
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;)Lcom/sonymobile/android/vcard/VCardEntry;
    .locals 1

    .prologue
    .line 2587
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/sonymobile/android/vcard/VCardEntry;->buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/sonymobile/android/vcard/VCardEntry;

    move-result-object v0

    return-object v0
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/sonymobile/android/vcard/VCardEntry;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2591
    return-object v0
.end method

.method private buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "SORT-AS"

    .line 1856
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1857
    if-nez v0, :cond_1

    .line 1871
    :cond_0
    return-object v2

    .line 1857
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1858
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 1863
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v0, v1}, Lcom/sonymobile/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1866
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1869
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v1, "vCard"

    .line 1859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1866
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1867
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private constructDisplayName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2495
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$1300(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2497
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    invoke-virtual {v1}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->emptyStructuredName()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2500
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    invoke-virtual {v1}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->emptyPhoneticStructuredName()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2503
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-nez v1, :cond_7

    .line 2505
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-nez v1, :cond_8

    .line 2507
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-nez v1, :cond_9

    .line 2509
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v1, :cond_a

    .line 2512
    :cond_3
    :goto_0
    if-eqz v0, :cond_b

    .line 2515
    :goto_1
    return-object v0

    .line 2496
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$1300(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2498
    :cond_5
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$1200(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;
    invoke-static {v2}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$1000(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;
    invoke-static {v3}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$1100(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;
    invoke-static {v4}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$900(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;
    invoke-static {v5}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$800(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2501
    :cond_6
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$500(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;
    invoke-static {v2}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$600(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v3}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$700(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2503
    :cond_7
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2504
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;

    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->mAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardEntry$EmailData;->access$1500(Lcom/sonymobile/android/vcard/VCardEntry$EmailData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2505
    :cond_8
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2506
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;

    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;->access$1600(Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2507
    :cond_9
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2508
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;

    iget v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mVCardType:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2509
    :cond_a
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 2510
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;

    invoke-virtual {v0}, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->getFormattedString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, ""

    goto/16 :goto_1
.end method

.method private handleAndroidCustomProperty(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2482
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2485
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;->constructAndroidCustomData(Ljava/util/List;)Lcom/sonymobile/android/vcard/VCardEntry$AndroidCustomData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2487
    return-void

    .line 2483
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    goto :goto_0
.end method

.method private handleNProperty(Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 2035
    invoke-direct {p0, p2}, Lcom/sonymobile/android/vcard/VCardEntry;->tryHandleSortAsName(Ljava/util/Map;)V

    .line 2039
    if-nez p1, :cond_1

    .line 2040
    :cond_0
    return-void

    .line 2039
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 2042
    if-gt v0, v1, :cond_2

    .line 2046
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 2057
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$1202(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2059
    return-void

    :cond_2
    move v0, v1

    .line 2043
    goto :goto_0

    .line 2049
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$802(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2051
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$902(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2053
    :pswitch_2
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$1002(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2055
    :pswitch_3
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$1102(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 2046
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1884
    invoke-direct {p0, p3}, Lcom/sonymobile/android/vcard/VCardEntry;->buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 1885
    if-eqz p2, :cond_1

    .line 1890
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    .line 1891
    packed-switch v6, :pswitch_data_0

    .line 1903
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1906
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v5

    .line 1907
    :goto_1
    if-lt v2, v6, :cond_2

    .line 1913
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v0

    .line 1916
    :goto_2
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1923
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, p0

    move v5, p1

    move v6, p4

    .line 1938
    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1939
    return-void

    .line 1886
    :cond_1
    sget-object p2, Lcom/sonymobile/android/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, ""

    move-object v2, v3

    move-object v1, v0

    .line 1895
    goto :goto_2

    .line 1898
    :pswitch_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v3

    move-object v1, v0

    .line 1900
    goto :goto_2

    .line 1908
    :cond_2
    if-gt v2, v5, :cond_3

    .line 1911
    :goto_3
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1907
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1909
    :cond_3
    const/16 v1, 0x20

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    move-object v0, p0

    move v5, p1

    move v6, p4

    .line 1919
    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1921
    return-void

    .line 1923
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;

    .line 1926
    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->access$100(Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->access$200(Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1930
    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mOrganizationName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->access$102(Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;

    .line 1931
    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mDepartmentName:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->access$202(Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;

    .line 1932
    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mIsPrimary:Z
    invoke-static {v0, p4}, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->access$302(Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;Z)Z

    .line 1933
    return-void

    .line 1891
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handlePhoneticNameFromSound(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2069
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$500(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2074
    :cond_0
    return-void

    .line 2069
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$600(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$700(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2078
    if-nez p1, :cond_3

    .line 2079
    :cond_2
    return-void

    .line 2078
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v3, :cond_2

    .line 2085
    if-gt v0, v2, :cond_5

    move v1, v0

    .line 2089
    :goto_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_6

    .line 2126
    :cond_4
    packed-switch v1, :pswitch_data_0

    .line 2133
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$502(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2135
    return-void

    :cond_5
    move v1, v2

    .line 2086
    goto :goto_0

    :cond_6
    move v5, v3

    .line 2091
    :goto_2
    if-lt v5, v1, :cond_7

    move v0, v3

    .line 2097
    :goto_3
    if-eqz v0, :cond_4

    .line 2098
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardConfig;->needsToConvertPhoneticString(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2120
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$502(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2122
    :goto_4
    return-void

    .line 2092
    :cond_7
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_8

    .line 2091
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    :cond_8
    move v0, v4

    .line 2094
    goto :goto_3

    .line 2101
    :cond_9
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2102
    array-length v1, v0

    .line 2103
    if-eq v1, v2, :cond_a

    .line 2108
    if-eq v1, v6, :cond_b

    .line 2115
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$502(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 2105
    :cond_a
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    aget-object v2, v0, v4

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$502(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2106
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    aget-object v2, v0, v3

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$602(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2107
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    aget-object v0, v0, v6

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$702(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 2112
    :cond_b
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    aget-object v2, v0, v4

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$502(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2113
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    aget-object v0, v0, v3

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$702(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 2129
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$602(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2131
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$702(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 2126
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2436
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "sip:"

    .line 2439
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, -0x1

    .line 2449
    if-nez p2, :cond_3

    move-object v3, v0

    move v0, v1

    .line 2468
    :goto_0
    if-ltz v0, :cond_a

    .line 2471
    :goto_1
    invoke-direct {p0, p1, v0, v3, v2}, Lcom/sonymobile/android/vcard/VCardEntry;->addSip(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 2472
    return-void

    .line 2437
    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x4

    .line 2440
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2441
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 2442
    return-void

    .line 2450
    :cond_3
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v0

    move v4, v1

    move v1, v2

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move v2, v1

    move v0, v4

    goto :goto_0

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2451
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "PREF"

    .line 2452
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string/jumbo v9, "HOME"

    .line 2454
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string/jumbo v9, "WORK"

    .line 2456
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 2458
    if-ltz v4, :cond_8

    move v0, v1

    move-object v1, v3

    move v3, v4

    :goto_3
    move v4, v3

    move-object v3, v1

    move v1, v0

    .line 2466
    goto :goto_2

    :cond_5
    move v0, v5

    move-object v1, v3

    move v3, v4

    .line 2453
    goto :goto_3

    :cond_6
    move v0, v1

    move-object v1, v3

    move v3, v5

    .line 2455
    goto :goto_3

    :cond_7
    move v0, v1

    move-object v1, v3

    move v3, v6

    .line 2457
    goto :goto_3

    :cond_8
    const-string/jumbo v3, "X-"

    .line 2459
    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_4
    move v3, v2

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    .line 2464
    goto :goto_3

    .line 2460
    :cond_9
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_a
    const/4 v0, 0x3

    .line 2469
    goto :goto_1
.end method

.method private handleTitleValue(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1949
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1955
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, v1

    .line 1963
    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1964
    return-void

    :cond_1
    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, v1

    .line 1952
    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1953
    return-void

    .line 1955
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;

    .line 1956
    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->access$400(Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1957
    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->mTitle:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;->access$402(Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;

    .line 1958
    return-void
.end method

.method private indexAtTrailingStarHash(Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1806
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne v0, p2, :cond_0

    const-string/jumbo v0, "*#"

    const/4 v1, 0x2

    .line 1807
    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    return v0

    .line 1806
    :cond_0
    return v2
.end method

.method private iterateOneList(Ljava/util/List;Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/sonymobile/android/vcard/VCardEntry$EntryElement;",
            ">;",
            "Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1614
    if-nez p1, :cond_1

    .line 1621
    :cond_0
    :goto_0
    return-void

    .line 1614
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1615
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryElement;

    invoke-interface {v0}, Lcom/sonymobile/android/vcard/VCardEntry$EntryElement;->getEntryLabel()Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;)V

    .line 1616
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1619
    invoke-interface {p2}, Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    goto :goto_0

    .line 1616
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryElement;

    .line 1617
    invoke-interface {p2, v0}, Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/sonymobile/android/vcard/VCardEntry$EntryElement;)Z

    goto :goto_1
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 2595
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 2596
    if-gt v1, v2, :cond_0

    .line 2606
    if-eq v1, v2, :cond_3

    const-string/jumbo v0, ""

    .line 2609
    return-object v0

    .line 2597
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2599
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2605
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2599
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2600
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2601
    add-int/lit8 v0, v1, -0x1

    if-lez v0, :cond_1

    const-string/jumbo v0, ";"

    .line 2602
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2607
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private tryHandleSortAsName(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1999
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const-string/jumbo v0, "SORT-AS"

    .line 2006
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2007
    if-nez v0, :cond_4

    .line 2029
    :cond_0
    :goto_1
    return-void

    .line 1999
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$500(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2003
    :cond_2
    return-void

    .line 1999
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$600(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$700(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2007
    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2008
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-gt v2, v6, :cond_5

    .line 2013
    :goto_2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v0, v2}, Lcom/sonymobile/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 2015
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 2016
    if-gt v0, v1, :cond_6

    .line 2019
    :goto_3
    packed-switch v0, :pswitch_data_0

    .line 2025
    :goto_4
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$502(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "vCard"

    .line 2009
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move v0, v1

    .line 2017
    goto :goto_3

    .line 2021
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    const/4 v0, 0x2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$602(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2023
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$702(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 2019
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addChild(Lcom/sonymobile/android/vcard/VCardEntry;)V
    .locals 1

    .prologue
    .line 2475
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2478
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2479
    return-void

    .line 2476
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    goto :goto_0
.end method

.method public addProperty(Lcom/sonymobile/android/vcard/VCardProperty;)V
    .locals 13

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2138
    invoke-virtual {p1}, Lcom/sonymobile/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2139
    invoke-virtual {p1}, Lcom/sonymobile/android/vcard/VCardProperty;->getParameterMap()Ljava/util/Map;

    move-result-object v8

    .line 2140
    invoke-virtual {p1}, Lcom/sonymobile/android/vcard/VCardProperty;->getValueList()Ljava/util/List;

    move-result-object v9

    .line 2141
    invoke-virtual {p1}, Lcom/sonymobile/android/vcard/VCardProperty;->getByteValue()[B

    move-result-object v1

    .line 2143
    if-nez v9, :cond_3

    :cond_0
    if-eqz v1, :cond_4

    .line 2147
    :goto_0
    if-nez v9, :cond_5

    move-object v3, v2

    :goto_1
    const-string/jumbo v10, "VERSION"

    .line 2151
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "FN"

    .line 2153
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string/jumbo v10, "NAME"

    .line 2155
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string/jumbo v10, "N"

    .line 2161
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string/jumbo v10, "SORT-STRING"

    .line 2163
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string/jumbo v10, "NICKNAME"

    .line 2165
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2167
    :cond_1
    invoke-direct {p0, v3}, Lcom/sonymobile/android/vcard/VCardEntry;->addNickName(Ljava/lang/String;)V

    .line 2429
    :cond_2
    :goto_2
    return-void

    .line 2143
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2145
    :cond_4
    return-void

    .line 2147
    :cond_5
    invoke-direct {p0, v9}, Lcom/sonymobile/android/vcard/VCardEntry;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2154
    :cond_6
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$1302(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 2158
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$1300(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2159
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$1302(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 2162
    :cond_8
    invoke-direct {p0, v9, v8}, Lcom/sonymobile/android/vcard/VCardEntry;->handleNProperty(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_2

    .line 2164
    :cond_9
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$1402(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_a
    const-string/jumbo v10, "X-NICKNAME"

    .line 2165
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string/jumbo v10, "SOUND"

    .line 2168
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string/jumbo v10, "ADR"

    .line 2182
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string/jumbo v10, "EMAIL"

    .line 2235
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d

    const-string/jumbo v10, "ORG"

    .line 2265
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_27

    const-string/jumbo v9, "TITLE"

    .line 2278
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2b

    const-string/jumbo v9, "ROLE"

    .line 2280
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "PHOTO"

    .line 2283
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c

    :cond_b
    const-string/jumbo v0, "VALUE"

    .line 2285
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2286
    if-nez v0, :cond_2d

    :goto_3
    const-string/jumbo v0, "TYPE"

    .line 2289
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2292
    if-nez v0, :cond_2e

    .line 2301
    :cond_c
    invoke-direct {p0, v2, v1, v4}, Lcom/sonymobile/android/vcard/VCardEntry;->addPhotoBytes(Ljava/lang/String;[BZ)V

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v0, "TYPE"

    .line 2169
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2170
    if-eqz v0, :cond_2

    const-string/jumbo v1, "X-IRMC-N"

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2176
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3, v0}, Lcom/sonymobile/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 2178
    invoke-direct {p0, v0}, Lcom/sonymobile/android/vcard/VCardEntry;->handlePhoneticNameFromSound(Ljava/util/List;)V

    goto/16 :goto_2

    .line 2184
    :cond_e
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v6

    .line 2190
    :goto_4
    if-nez v0, :cond_12

    const-string/jumbo v0, "TYPE"

    .line 2197
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2198
    if-nez v0, :cond_13

    move v0, v5

    .line 2230
    :goto_5
    if-ltz v0, :cond_10

    move v6, v0

    .line 2234
    :cond_10
    invoke-direct {p0, v6, v9, v2, v4}, Lcom/sonymobile/android/vcard/VCardEntry;->addPostal(ILjava/util/List;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 2184
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v4

    .line 2187
    goto :goto_4

    .line 2191
    :cond_12
    return-void

    .line 2199
    :cond_13
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v4

    move-object v3, v2

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    move v4, v1

    move-object v2, v3

    move v0, v5

    goto :goto_5

    :cond_14
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2200
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "PREF"

    .line 2201
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    const-string/jumbo v11, "HOME"

    .line 2203
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    const-string/jumbo v11, "WORK"

    .line 2206
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    :cond_15
    move v0, v1

    move v3, v7

    move-object v1, v2

    :goto_7
    move v5, v3

    move-object v3, v1

    move v1, v0

    .line 2227
    goto :goto_6

    :cond_16
    move v0, v6

    move-object v1, v3

    move v3, v5

    .line 2202
    goto :goto_7

    :cond_17
    move v0, v1

    move v3, v6

    move-object v1, v2

    .line 2205
    goto :goto_7

    :cond_18
    const-string/jumbo v11, "COMPANY"

    .line 2206
    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_15

    const-string/jumbo v11, "PARCEL"

    .line 2214
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    :cond_19
    move v0, v1

    move-object v1, v3

    move v3, v5

    goto :goto_7

    :cond_1a
    const-string/jumbo v11, "DOM"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    const-string/jumbo v11, "INTL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    const-string/jumbo v11, "POSTAL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    .line 2219
    if-ltz v5, :cond_1b

    move v0, v1

    move-object v1, v3

    move v3, v5

    goto :goto_7

    :cond_1b
    const-string/jumbo v3, "X-"

    .line 2221
    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    move v3, v4

    move-object v12, v0

    move v0, v1

    move-object v1, v12

    .line 2224
    goto :goto_7

    .line 2222
    :cond_1c
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move v0, v1

    move-object v1, v3

    move v3, v4

    goto :goto_7

    :cond_1d
    const-string/jumbo v0, "TYPE"

    .line 2239
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2240
    if-nez v0, :cond_1e

    move v0, v5

    .line 2261
    :goto_8
    if-ltz v0, :cond_26

    .line 2264
    :goto_9
    invoke-direct {p0, v0, v3, v2, v4}, Lcom/sonymobile/android/vcard/VCardEntry;->addEmail(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 2241
    :cond_1e
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v4

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1f

    move v4, v1

    move v0, v5

    goto :goto_8

    :cond_1f
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2242
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "PREF"

    .line 2243
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_20

    const-string/jumbo v10, "HOME"

    .line 2245
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_21

    const-string/jumbo v10, "WORK"

    .line 2247
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_22

    const-string/jumbo v10, "CELL"

    .line 2249
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_23

    .line 2251
    if-ltz v5, :cond_24

    move v0, v1

    :goto_b
    move v1, v0

    .line 2259
    goto :goto_a

    :cond_20
    move v0, v6

    .line 2244
    goto :goto_b

    :cond_21
    move v0, v1

    move v5, v6

    .line 2246
    goto :goto_b

    :cond_22
    move v0, v1

    move v5, v7

    .line 2248
    goto :goto_b

    :cond_23
    const/4 v5, 0x4

    move v0, v1

    .line 2250
    goto :goto_b

    :cond_24
    const-string/jumbo v2, "X-"

    .line 2252
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    :goto_c
    move-object v2, v0

    move v5, v4

    move v0, v1

    .line 2257
    goto :goto_b

    .line 2253
    :cond_25
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_26
    const/4 v0, 0x3

    .line 2262
    goto :goto_9

    :cond_27
    const-string/jumbo v0, "TYPE"

    .line 2269
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2270
    if-nez v0, :cond_29

    .line 2277
    :cond_28
    invoke-direct {p0, v6, v9, v8, v4}, Lcom/sonymobile/android/vcard/VCardEntry;->handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V

    goto/16 :goto_2

    .line 2271
    :cond_29
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "PREF"

    .line 2272
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v4, v6

    .line 2273
    goto :goto_d

    .line 2279
    :cond_2b
    invoke-direct {p0, v3}, Lcom/sonymobile/android/vcard/VCardEntry;->handleTitleValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2c
    const-string/jumbo v9, "LOGO"

    .line 2283
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v1, "TEL"

    .line 2303
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string/jumbo v1, "X-SKYPE-PSTNNUMBER"

    .line 2354
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 2366
    sget-object v1, Lcom/sonymobile/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    const-string/jumbo v1, "NOTE"

    .line 2388
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    const-string/jumbo v1, "URL"

    .line 2390
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string/jumbo v1, "BDAY"

    .line 2395
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    const-string/jumbo v1, "ANNIVERSARY"

    .line 2397
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string/jumbo v1, "X-PHONETIC-FIRST-NAME"

    .line 2399
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    const-string/jumbo v1, "X-PHONETIC-MIDDLE-NAME"

    .line 2401
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string/jumbo v1, "X-PHONETIC-LAST-NAME"

    .line 2403
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    const-string/jumbo v1, "IMPP"

    .line 2405
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string/jumbo v1, "X-SIP"

    .line 2411
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    const-string/jumbo v1, "X-ANDROID-CUSTOM"

    .line 2416
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 2420
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "X-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2422
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mUnknownXData:Ljava/util/List;

    if-eqz v1, :cond_4f

    .line 2425
    :goto_e
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mUnknownXData:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_2d
    const-string/jumbo v3, "URL"

    .line 2286
    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 2293
    :cond_2e
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v5, "PREF"

    .line 2294
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 2296
    if-nez v2, :cond_2f

    move-object v2, v0

    .line 2297
    goto :goto_f

    :cond_30
    move v4, v6

    .line 2295
    goto :goto_f

    .line 2306
    :cond_31
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-nez v0, :cond_33

    move v0, v4

    move-object v5, v3

    .line 2323
    :goto_10
    if-nez v0, :cond_36

    .line 2327
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_37

    const-string/jumbo v0, "TYPE"

    .line 2331
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2332
    invoke-static {v0, v5}, Lcom/sonymobile/android/vcard/VCardUtils;->getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2336
    instance-of v3, v1, Ljava/lang/Integer;

    if-nez v3, :cond_38

    .line 2341
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move v1, v4

    .line 2345
    :goto_11
    if-nez v0, :cond_39

    :goto_12
    move v6, v4

    .line 2352
    :cond_32
    invoke-direct {p0, v1, v5, v2, v6}, Lcom/sonymobile/android/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_33
    const-string/jumbo v0, "sip:"

    .line 2309
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string/jumbo v0, "tel:"

    .line 2311
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    move v0, v4

    move-object v5, v3

    .line 2317
    goto :goto_10

    :cond_34
    move v0, v6

    move-object v5, v2

    .line 2310
    goto :goto_10

    :cond_35
    const/4 v0, 0x4

    .line 2312
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move v0, v4

    goto :goto_10

    :cond_36
    const-string/jumbo v0, "TYPE"

    .line 2324
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2325
    invoke-direct {p0, v3, v0}, Lcom/sonymobile/android/vcard/VCardEntry;->handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_2

    .line 2328
    :cond_37
    return-void

    .line 2337
    :cond_38
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_11

    :cond_39
    const-string/jumbo v3, "PREF"

    .line 2345
    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_12

    :cond_3a
    const-string/jumbo v0, "TYPE"

    .line 2356
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2359
    if-nez v0, :cond_3c

    :goto_13
    move v6, v4

    :cond_3b
    const/4 v0, 0x7

    .line 2365
    invoke-direct {p0, v0, v3, v2, v6}, Lcom/sonymobile/android/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_3c
    const-string/jumbo v1, "PREF"

    .line 2359
    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_13

    .line 2367
    :cond_3d
    sget-object v1, Lcom/sonymobile/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v0, "TYPE"

    .line 2370
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2371
    if-nez v0, :cond_3e

    move v12, v5

    move v5, v4

    move v4, v12

    .line 2384
    :goto_14
    if-ltz v4, :cond_43

    :goto_15
    move-object v0, p0

    .line 2387
    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/android/vcard/VCardEntry;->addIm(ILjava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_2

    .line 2372
    :cond_3e
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3f
    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_40

    move v12, v5

    move v5, v4

    move v4, v12

    goto :goto_14

    :cond_40
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v9, "PREF"

    .line 2373
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_41

    .line 2375
    if-gez v5, :cond_3f

    const-string/jumbo v9, "HOME"

    .line 2376
    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_42

    const-string/jumbo v9, "WORK"

    .line 2378
    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    move v5, v7

    .line 2379
    goto :goto_16

    :cond_41
    move v4, v6

    .line 2374
    goto :goto_16

    :cond_42
    move v5, v6

    .line 2377
    goto :goto_16

    :cond_43
    move v4, v6

    .line 2385
    goto :goto_15

    .line 2389
    :cond_44
    invoke-direct {p0, v3}, Lcom/sonymobile/android/vcard/VCardEntry;->addNote(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2391
    :cond_45
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    if-eqz v0, :cond_46

    .line 2394
    :goto_17
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    new-instance v1, Lcom/sonymobile/android/vcard/VCardEntry$WebsiteData;

    invoke-direct {v1, v3}, Lcom/sonymobile/android/vcard/VCardEntry$WebsiteData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2392
    :cond_46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    goto :goto_17

    .line 2396
    :cond_47
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;

    invoke-direct {v0, v3}, Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mBirthday:Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;

    goto/16 :goto_2

    .line 2398
    :cond_48
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$AnniversaryData;

    invoke-direct {v0, v3}, Lcom/sonymobile/android/vcard/VCardEntry$AnniversaryData;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mAnniversary:Lcom/sonymobile/android/vcard/VCardEntry$AnniversaryData;

    goto/16 :goto_2

    .line 2400
    :cond_49
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$702(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 2402
    :cond_4a
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$602(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 2404
    :cond_4b
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    # setter for: Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->access$502(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    :cond_4c
    const-string/jumbo v0, "sip:"

    .line 2407
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "TYPE"

    .line 2408
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2409
    invoke-direct {p0, v3, v0}, Lcom/sonymobile/android/vcard/VCardEntry;->handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_2

    .line 2412
    :cond_4d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "TYPE"

    .line 2413
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2414
    invoke-direct {p0, v3, v0}, Lcom/sonymobile/android/vcard/VCardEntry;->handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_2

    .line 2417
    :cond_4e
    iget v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3, v0}, Lcom/sonymobile/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 2419
    invoke-direct {p0, v0}, Lcom/sonymobile/android/vcard/VCardEntry;->handleAndroidCustomProperty(Ljava/util/List;)V

    goto/16 :goto_2

    .line 2423
    :cond_4f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mUnknownXData:Ljava/util/List;

    goto/16 :goto_e
.end method

.method public consolidateFields()V
    .locals 2

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    invoke-direct {p0}, Lcom/sonymobile/android/vcard/VCardEntry;->constructDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    .line 2523
    return-void
.end method

.method public constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2556
    if-eqz p2, :cond_0

    .line 2560
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/android/vcard/VCardEntry;->isIgnorable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2564
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2568
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 2570
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    if-nez v2, :cond_2

    const-string/jumbo v2, "account_name"

    .line 2574
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v2, "account_type"

    .line 2575
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2577
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2579
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 2580
    new-instance v1, Lcom/sonymobile/android/vcard/VCardEntry$InsertOperationConstrutor;

    invoke-direct {v1, p0, p2, v0}, Lcom/sonymobile/android/vcard/VCardEntry$InsertOperationConstrutor;-><init>(Lcom/sonymobile/android/vcard/VCardEntry;Ljava/util/List;I)V

    invoke-virtual {p0, v1}, Lcom/sonymobile/android/vcard/VCardEntry;->iterateAllData(Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2581
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 2583
    return-object p2

    .line 2557
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 2561
    :cond_1
    return-object p2

    :cond_2
    const-string/jumbo v2, "account_name"

    .line 2571
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v2, "account_type"

    .line 2572
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1
.end method

.method public final getBirthday()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2622
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mBirthday:Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mBirthday:Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;

    # getter for: Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;->mBirthday:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;->access$1800(Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getChildlen()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2661
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2665
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    iget-object v0, v0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2668
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    iget-object v0, v0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    return-object v0

    .line 2666
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    invoke-direct {p0}, Lcom/sonymobile/android/vcard/VCardEntry;->constructDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getEmailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2634
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    return-object v0
.end method

.method public final getImList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    return-object v0
.end method

.method public final getNameData()Lcom/sonymobile/android/vcard/VCardEntry$NameData;
    .locals 1

    .prologue
    .line 2614
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    return-object v0
.end method

.method public final getNickNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry$NicknameData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2618
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    return-object v0
.end method

.method public final getNotes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry$NoteData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2626
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    return-object v0
.end method

.method public final getOrganizationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2642
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    return-object v0
.end method

.method public final getPhoneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2630
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    return-object v0
.end method

.method public final getPhotoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2650
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    return-object v0
.end method

.method public final getPostalList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2638
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    return-object v0
.end method

.method public getUnknownXData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2672
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mUnknownXData:Ljava/util/List;

    return-object v0
.end method

.method public final getWebsiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/vcard/VCardEntry$WebsiteData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2654
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    return-object v0
.end method

.method public isIgnorable()Z
    .locals 2

    .prologue
    .line 2534
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$IsIgnorableIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/android/vcard/VCardEntry$IsIgnorableIterator;-><init>(Lcom/sonymobile/android/vcard/VCardEntry;Lcom/sonymobile/android/vcard/VCardEntry$1;)V

    .line 2535
    invoke-virtual {p0, v0}, Lcom/sonymobile/android/vcard/VCardEntry;->iterateAllData(Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2536
    invoke-virtual {v0}, Lcom/sonymobile/android/vcard/VCardEntry$IsIgnorableIterator;->getResult()Z

    move-result v0

    return v0
.end method

.method public final iterateAllData(Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;)V
    .locals 1

    .prologue
    .line 1582
    invoke-interface {p1}, Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;->onIterationStarted()V

    .line 1583
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    invoke-virtual {v0}, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->getEntryLabel()Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;)V

    .line 1584
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNameData:Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/sonymobile/android/vcard/VCardEntry$EntryElement;)Z

    .line 1585
    invoke-interface {p1}, Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 1587
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1588
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1589
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1590
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1591
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1592
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1593
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1594
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1595
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1596
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1597
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1599
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mBirthday:Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;

    if-nez v0, :cond_0

    .line 1604
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mAnniversary:Lcom/sonymobile/android/vcard/VCardEntry$AnniversaryData;

    if-nez v0, :cond_1

    .line 1609
    :goto_1
    invoke-interface {p1}, Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;->onIterationEnded()V

    .line 1610
    return-void

    .line 1600
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mBirthday:Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;

    invoke-virtual {v0}, Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;->getEntryLabel()Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;)V

    .line 1601
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mBirthday:Lcom/sonymobile/android/vcard/VCardEntry$BirthdayData;

    invoke-interface {p1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/sonymobile/android/vcard/VCardEntry$EntryElement;)Z

    .line 1602
    invoke-interface {p1}, Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    goto :goto_0

    .line 1605
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mAnniversary:Lcom/sonymobile/android/vcard/VCardEntry$AnniversaryData;

    invoke-virtual {v0}, Lcom/sonymobile/android/vcard/VCardEntry$AnniversaryData;->getEntryLabel()Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;)V

    .line 1606
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry;->mAnniversary:Lcom/sonymobile/android/vcard/VCardEntry$AnniversaryData;

    invoke-interface {p1, v0}, Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/sonymobile/android/vcard/VCardEntry$EntryElement;)Z

    .line 1607
    invoke-interface {p1}, Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1744
    new-instance v0, Lcom/sonymobile/android/vcard/VCardEntry$ToStringIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/android/vcard/VCardEntry$ToStringIterator;-><init>(Lcom/sonymobile/android/vcard/VCardEntry;Lcom/sonymobile/android/vcard/VCardEntry$1;)V

    .line 1745
    invoke-virtual {p0, v0}, Lcom/sonymobile/android/vcard/VCardEntry;->iterateAllData(Lcom/sonymobile/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1746
    invoke-virtual {v0}, Lcom/sonymobile/android/vcard/VCardEntry$ToStringIterator;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
