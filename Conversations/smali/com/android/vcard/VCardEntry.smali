.class public Lcom/android/vcard/VCardEntry;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardEntry$EntryLabel;,
        Lcom/android/vcard/VCardEntry$EntryElement;,
        Lcom/android/vcard/VCardEntry$NameData;,
        Lcom/android/vcard/VCardEntry$PhoneData;,
        Lcom/android/vcard/VCardEntry$EmailData;,
        Lcom/android/vcard/VCardEntry$PostalData;,
        Lcom/android/vcard/VCardEntry$OrganizationData;,
        Lcom/android/vcard/VCardEntry$ImData;,
        Lcom/android/vcard/VCardEntry$PhotoData;,
        Lcom/android/vcard/VCardEntry$NicknameData;,
        Lcom/android/vcard/VCardEntry$NoteData;,
        Lcom/android/vcard/VCardEntry$WebsiteData;,
        Lcom/android/vcard/VCardEntry$BirthdayData;,
        Lcom/android/vcard/VCardEntry$AnniversaryData;,
        Lcom/android/vcard/VCardEntry$SipData;,
        Lcom/android/vcard/VCardEntry$AndroidCustomData;,
        Lcom/android/vcard/VCardEntry$EntryElementIterator;,
        Lcom/android/vcard/VCardEntry$IsIgnorableIterator;,
        Lcom/android/vcard/VCardEntry$ToStringIterator;,
        Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;
    }
.end annotation


# static fields
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
            "Lcom/android/vcard/VCardEntry$AndroidCustomData;",
            ">;"
        }
    .end annotation
.end field

.field private mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

.field private mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation
.end field

.field private mImList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation
.end field

.field private final mNameData:Lcom/android/vcard/VCardEntry$NameData;

.field private mNicknameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$NicknameData;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$NoteData;",
            ">;"
        }
    .end annotation
.end field

.field private mOrganizationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation
.end field

.field private mPostalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation
.end field

.field private mSipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$SipData;",
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
            "Lcom/android/vcard/VCardEntry$WebsiteData;",
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

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    .line 81
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string/jumbo v1, "X-AIM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string/jumbo v1, "X-MSN"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string/jumbo v1, "X-YAHOO"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string/jumbo v1, "X-ICQ"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string/jumbo v1, "X-JABBER"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string/jumbo v1, "X-SKYPE-USERNAME"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string/jumbo v1, "X-GOOGLE-TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string/jumbo v1, "X-GOOGLE TALK"

    .line 89
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 88
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string/jumbo v1, "X-QQ"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string/jumbo v1, "X-CUSTOM-IM"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1868
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1768
    const/high16 v0, -0x40000000    # -2.0f

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardEntry;-><init>(I)V

    .line 1767
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "vcardType"    # I

    .prologue
    .line 1772
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vcard/VCardEntry;-><init>(ILandroid/accounts/Account;)V

    .line 1771
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 1
    .param p1, "vcardType"    # I
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 1775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1552
    new-instance v0, Lcom/android/vcard/VCardEntry$NameData;

    invoke-direct {v0}, Lcom/android/vcard/VCardEntry$NameData;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    .line 1776
    iput p1, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    .line 1777
    iput-object p2, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    .line 1775
    return-void
.end method

.method private addEmail(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1842
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    .line 1844
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    new-instance v1, Lcom/android/vcard/VCardEntry$EmailData;

    invoke-direct {v1, p2, p1, p3, p4}, Lcom/android/vcard/VCardEntry$EmailData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1840
    return-void
.end method

.method private addIm(ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "protocol"    # I
    .param p2, "customProtocol"    # Ljava/lang/String;
    .param p3, "propValue"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "isPrimary"    # Z

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1985
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    .line 1987
    :cond_0
    iget-object v6, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    new-instance v0, Lcom/android/vcard/VCardEntry$ImData;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/vcard/VCardEntry$ImData;-><init>(ILjava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1983
    return-void
.end method

.method private addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "organizationName"    # Ljava/lang/String;
    .param p2, "departmentName"    # Ljava/lang/String;
    .param p3, "titleName"    # Ljava/lang/String;
    .param p4, "phoneticName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "isPrimary"    # Z

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1862
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    .line 1864
    :cond_0
    iget-object v7, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    new-instance v0, Lcom/android/vcard/VCardEntry$OrganizationData;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/vcard/VCardEntry$OrganizationData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1860
    return-void
.end method

.method private addNickName(Ljava/lang/String;)V
    .locals 2
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1835
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    .line 1837
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    new-instance v1, Lcom/android/vcard/VCardEntry$NicknameData;

    invoke-direct {v1, p1}, Lcom/android/vcard/VCardEntry$NicknameData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1833
    return-void
.end method

.method private addNote(Ljava/lang/String;)V
    .locals 2
    .param p1, "note"    # Ljava/lang/String;

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1992
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    .line 1994
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    new-instance v1, Lcom/android/vcard/VCardEntry$NoteData;

    invoke-direct {v1, p1}, Lcom/android/vcard/VCardEntry$NoteData;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1990
    return-void
.end method

.method private addPhone(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z

    .prologue
    const/4 v10, 0x0

    .line 1781
    iget-object v9, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-nez v9, :cond_0

    .line 1782
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    .line 1784
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1785
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1787
    .local v8, "trimmed":Ljava/lang/String;
    const/4 v9, 0x6

    if-eq p1, v9, :cond_1

    iget v9, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v9}, Lcom/android/vcard/VCardConfig;->refrainPhoneNumberFormatting(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1788
    :cond_1
    move-object v2, v8

    .line 1822
    .local v2, "formattedNumber":Ljava/lang/String;
    :goto_0
    new-instance v7, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-direct {v7, v2, p1, p3, p4}, Lcom/android/vcard/VCardEntry$PhoneData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 1823
    .local v7, "phoneData":Lcom/android/vcard/VCardEntry$PhoneData;
    iget-object v9, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1780
    return-void

    .line 1794
    .end local v2    # "formattedNumber":Ljava/lang/String;
    .end local v7    # "phoneData":Lcom/android/vcard/VCardEntry$PhoneData;
    :cond_2
    const/4 v4, 0x0

    .line 1795
    .local v4, "hasPauseOrWait":Z
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .line 1796
    .local v6, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_b

    .line 1797
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1799
    .local v1, "ch":C
    const/16 v9, 0x70

    if-eq v1, v9, :cond_3

    const/16 v9, 0x50

    if-ne v1, v9, :cond_5

    .line 1801
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1802
    const/4 v4, 0x1

    .line 1796
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1803
    :cond_5
    const/16 v9, 0x77

    if-eq v1, v9, :cond_6

    const/16 v9, 0x57

    if-ne v1, v9, :cond_7

    .line 1804
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1806
    const/4 v4, 0x1

    .line 1803
    goto :goto_2

    .line 1807
    :cond_7
    const/16 v9, 0x30

    if-gt v9, v1, :cond_9

    const/16 v9, 0x39

    if-gt v1, v9, :cond_9

    .line 1810
    :cond_8
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1807
    :cond_9
    if-nez v5, :cond_a

    const/16 v9, 0x2b

    if-eq v1, v9, :cond_8

    :cond_a
    const/16 v9, 0x20

    if-eq v1, v9, :cond_8

    const/16 v9, 0x3b

    if-eq v1, v9, :cond_8

    .line 1809
    const/16 v9, 0x2c

    if-eq v1, v9, :cond_8

    const/16 v9, 0x2d

    if-eq v1, v9, :cond_8

    const/16 v9, 0x2f

    if-eq v1, v9, :cond_8

    const/16 v9, 0x2a

    if-eq v1, v9, :cond_8

    const/16 v9, 0x23

    if-eq v1, v9, :cond_8

    const/16 v9, 0x2e

    if-ne v1, v9, :cond_4

    goto :goto_3

    .line 1813
    .end local v1    # "ch":C
    :cond_b
    if-nez v4, :cond_c

    .line 1815
    iget v9, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v9}, Lcom/android/vcard/VCardUtils;->getPhoneNumberFormat(I)I

    move-result v3

    .line 1817
    .local v3, "formattingType":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1816
    invoke-static {v9, v10}, Lcom/android/vcard/VCardUtils$PhoneNumberUtilsPort;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedNumber":Ljava/lang/String;
    goto :goto_0

    .line 1819
    .end local v2    # "formattedNumber":Ljava/lang/String;
    .end local v3    # "formattingType":I
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedNumber":Ljava/lang/String;
    goto :goto_0
.end method

.method private addPhotoBytes(Ljava/lang/String;[BZ)V
    .locals 3
    .param p1, "formatName"    # Ljava/lang/String;
    .param p2, "photoBytes"    # [B
    .param p3, "isPrimary"    # Z

    .prologue
    .line 1998
    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1999
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    .line 2001
    :cond_0
    new-instance v0, Lcom/android/vcard/VCardEntry$PhotoData;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/vcard/VCardEntry$PhotoData;-><init>(Ljava/lang/String;[BZ)V

    .line 2002
    .local v0, "photoData":Lcom/android/vcard/VCardEntry$PhotoData;
    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1997
    return-void
.end method

.method private addPostal(ILjava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "type"    # I
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z
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
    .line 1848
    .local p2, "propValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1849
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    .line 1851
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    .line 1852
    iget v1, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    .line 1851
    invoke-static {p2, p1, p3, p4, v1}, Lcom/android/vcard/VCardEntry$PostalData;->constructPostalData(Ljava/util/List;ILjava/lang/String;ZI)Lcom/android/vcard/VCardEntry$PostalData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1847
    return-void
.end method

.method private addSip(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2
    .param p1, "sipData"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "isPrimary"    # Z

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    .line 1830
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    new-instance v1, Lcom/android/vcard/VCardEntry$SipData;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/vcard/VCardEntry$SipData;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1826
    return-void
.end method

.method private buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
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
    .local p1, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    .line 1872
    const-string/jumbo v5, "SORT-AS"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 1873
    .local v3, "sortAsCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 1874
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 1875
    const-string/jumbo v5, "vCard"

    .line 1876
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1877
    invoke-interface {v3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1876
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1875
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    :cond_0
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1880
    iget v6, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    .line 1879
    invoke-static {v5, v6}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 1881
    .local v4, "sortNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1882
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "elem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1883
    .local v1, "elem":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1885
    .end local v1    # "elem":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1887
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "elem$iterator":Ljava/util/Iterator;
    .end local v4    # "sortNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-object v6
.end method

.method private constructDisplayName()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2513
    const/4 v6, 0x0

    .line 2515
    .local v6, "displayName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->-get1(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2516
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$NameData;->-get1(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v6

    .line 2532
    .end local v6    # "displayName":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v6, :cond_1

    .line 2533
    const-string/jumbo v6, ""

    .line 2535
    :cond_1
    return-object v6

    .line 2517
    .restart local v6    # "displayName":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->emptyStructuredName()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2518
    iget v0, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v1}, Lcom/android/vcard/VCardEntry$NameData;->-get0(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v1

    .line 2519
    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v2}, Lcom/android/vcard/VCardEntry$NameData;->-get3(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v3}, Lcom/android/vcard/VCardEntry$NameData;->-get2(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v4}, Lcom/android/vcard/VCardEntry$NameData;->-get7(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v5}, Lcom/android/vcard/VCardEntry$NameData;->-get8(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v5

    .line 2518
    invoke-static/range {v0 .. v5}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "displayName":Ljava/lang/String;
    goto :goto_0

    .line 2520
    .local v6, "displayName":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->emptyPhoneticStructuredName()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2521
    iget v0, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    .line 2522
    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v1}, Lcom/android/vcard/VCardEntry$NameData;->-get4(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v2}, Lcom/android/vcard/VCardEntry$NameData;->-get6(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v3}, Lcom/android/vcard/VCardEntry$NameData;->-get5(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    .line 2521
    invoke-static {v0, v1, v2, v3}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "displayName":Ljava/lang/String;
    goto :goto_0

    .line 2523
    .local v6, "displayName":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2524
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EmailData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$EmailData;->-get0(Lcom/android/vcard/VCardEntry$EmailData;)Ljava/lang/String;

    move-result-object v6

    .local v6, "displayName":Ljava/lang/String;
    goto :goto_0

    .line 2525
    .local v6, "displayName":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 2526
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-static {v0}, Lcom/android/vcard/VCardEntry$PhoneData;->-get0(Lcom/android/vcard/VCardEntry$PhoneData;)Ljava/lang/String;

    move-result-object v6

    .local v6, "displayName":Ljava/lang/String;
    goto/16 :goto_0

    .line 2527
    .local v6, "displayName":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 2528
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$PostalData;

    iget v1, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "displayName":Ljava/lang/String;
    goto/16 :goto_0

    .line 2529
    .local v6, "displayName":Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2530
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$OrganizationData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$OrganizationData;->getFormattedString()Ljava/lang/String;

    move-result-object v6

    .local v6, "displayName":Ljava/lang/String;
    goto/16 :goto_0
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
    .line 2502
    .local p1, "customPropertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    .line 2505
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    .line 2506
    invoke-static {p1}, Lcom/android/vcard/VCardEntry$AndroidCustomData;->constructAndroidCustomData(Ljava/util/List;)Lcom/android/vcard/VCardEntry$AndroidCustomData;

    move-result-object v1

    .line 2505
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2501
    return-void
.end method

.method private handleNProperty(Ljava/util/List;Ljava/util/Map;)V
    .locals 4
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
    .local p1, "paramValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v3, 0x1

    .line 2051
    invoke-direct {p0, p2}, Lcom/android/vcard/VCardEntry;->tryHandleSortAsName(Ljava/util/Map;)V

    .line 2055
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "size":I
    if-ge v0, v3, :cond_1

    .line 2056
    .end local v0    # "size":I
    :cond_0
    return-void

    .line 2058
    .restart local v0    # "size":I
    :cond_1
    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 2059
    const/4 v0, 0x5

    .line 2062
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 2073
    :goto_0
    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/vcard/VCardEntry$NameData;->-set0(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2049
    return-void

    .line 2065
    :pswitch_0
    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/vcard/VCardEntry$NameData;->-set9(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2067
    :pswitch_1
    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/vcard/VCardEntry$NameData;->-set7(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2069
    :pswitch_2
    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/vcard/VCardEntry$NameData;->-set3(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2071
    :pswitch_3
    iget-object v2, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/vcard/VCardEntry$NameData;->-set2(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2062
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V
    .locals 13
    .param p1, "type"    # I
    .param p4, "isPrimary"    # Z
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
    .line 1900
    .local p2, "orgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardEntry;->buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 1901
    .local v5, "phoneticName":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 1902
    sget-object p2, Lcom/android/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    .line 1906
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v12

    .line 1907
    .local v12, "size":I
    packed-switch v12, :pswitch_data_0

    .line 1919
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1922
    .local v2, "organizationName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1923
    .local v8, "builder":Ljava/lang/StringBuilder;
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    if-ge v9, v12, :cond_2

    .line 1924
    const/4 v1, 0x1

    if-le v9, v1, :cond_1

    .line 1925
    const/16 v1, 0x20

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1927
    :cond_1
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1923
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1909
    .end local v2    # "organizationName":Ljava/lang/String;
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "i":I
    :pswitch_0
    const-string/jumbo v2, ""

    .line 1910
    .restart local v2    # "organizationName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1932
    :goto_1
    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v1, :cond_3

    .line 1935
    const/4 v4, 0x0

    move-object v1, p0

    move v6, p1

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1937
    return-void

    .line 1914
    .end local v2    # "organizationName":Ljava/lang/String;
    :pswitch_1
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1915
    .restart local v2    # "organizationName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1916
    .local v3, "departmentName":Ljava/lang/String;
    goto :goto_1

    .line 1929
    .end local v3    # "departmentName":Ljava/lang/String;
    .restart local v8    # "builder":Ljava/lang/StringBuilder;
    .restart local v9    # "i":I
    :cond_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "departmentName":Ljava/lang/String;
    goto :goto_1

    .line 1939
    .end local v3    # "departmentName":Ljava/lang/String;
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "organizationData$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/vcard/VCardEntry$OrganizationData;

    .line 1942
    .local v10, "organizationData":Lcom/android/vcard/VCardEntry$OrganizationData;
    invoke-static {v10}, Lcom/android/vcard/VCardEntry$OrganizationData;->-get1(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1943
    invoke-static {v10}, Lcom/android/vcard/VCardEntry$OrganizationData;->-get0(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1946
    invoke-static {v10, v2}, Lcom/android/vcard/VCardEntry$OrganizationData;->-set2(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;

    .line 1947
    invoke-static {v10, v3}, Lcom/android/vcard/VCardEntry$OrganizationData;->-set0(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;

    .line 1948
    move/from16 v0, p4

    invoke-static {v10, v0}, Lcom/android/vcard/VCardEntry$OrganizationData;->-set1(Lcom/android/vcard/VCardEntry$OrganizationData;Z)Z

    .line 1949
    return-void

    .line 1954
    .end local v10    # "organizationData":Lcom/android/vcard/VCardEntry$OrganizationData;
    :cond_5
    const/4 v4, 0x0

    move-object v1, p0

    move v6, p1

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1899
    return-void

    .line 1907
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handlePhoneticNameFromSound(Ljava/util/List;)V
    .locals 11
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
    .local p1, "elems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 2085
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v5}, Lcom/android/vcard/VCardEntry$NameData;->-get4(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2086
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v5}, Lcom/android/vcard/VCardEntry$NameData;->-get6(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 2085
    if-eqz v5, :cond_0

    .line 2087
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v5}, Lcom/android/vcard/VCardEntry$NameData;->-get5(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v5

    .line 2086
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 2085
    :goto_0
    if-nez v5, :cond_1

    .line 2090
    return-void

    :cond_0
    move v5, v6

    .line 2085
    goto :goto_0

    .line 2094
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    if-ge v4, v8, :cond_3

    .line 2095
    .end local v4    # "size":I
    :cond_2
    return-void

    .line 2101
    .restart local v4    # "size":I
    :cond_3
    if-le v4, v10, :cond_4

    .line 2102
    const/4 v4, 0x3

    .line 2105
    :cond_4
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 2106
    const/4 v3, 0x1

    .line 2107
    .local v3, "onlyFirstElemIsNonEmpty":Z
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_5

    .line 2108
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 2109
    const/4 v3, 0x0

    .line 2113
    :cond_5
    if-eqz v3, :cond_9

    .line 2114
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2115
    .local v2, "namesArray":[Ljava/lang/String;
    array-length v1, v2

    .line 2116
    .local v1, "nameArrayLength":I
    if-ne v1, v10, :cond_7

    .line 2118
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v6, v2, v6

    invoke-static {v5, v6}, Lcom/android/vcard/VCardEntry$NameData;->-set4(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2119
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v6, v2, v8

    invoke-static {v5, v6}, Lcom/android/vcard/VCardEntry$NameData;->-set6(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2120
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v6, v2, v9

    invoke-static {v5, v6}, Lcom/android/vcard/VCardEntry$NameData;->-set5(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2129
    :goto_2
    return-void

    .line 2107
    .end local v1    # "nameArrayLength":I
    .end local v2    # "namesArray":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2121
    .restart local v1    # "nameArrayLength":I
    .restart local v2    # "namesArray":[Ljava/lang/String;
    :cond_7
    if-ne v1, v9, :cond_8

    .line 2124
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v6, v2, v6

    invoke-static {v5, v6}, Lcom/android/vcard/VCardEntry$NameData;->-set4(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2125
    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    aget-object v6, v2, v8

    invoke-static {v5, v6}, Lcom/android/vcard/VCardEntry$NameData;->-set5(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 2127
    :cond_8
    iget-object v7, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/android/vcard/VCardEntry$NameData;->-set5(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 2133
    .end local v0    # "i":I
    .end local v1    # "nameArrayLength":I
    .end local v2    # "namesArray":[Ljava/lang/String;
    .end local v3    # "onlyFirstElemIsNonEmpty":Z
    :cond_9
    packed-switch v4, :pswitch_data_0

    .line 2140
    :goto_3
    iget-object v7, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/android/vcard/VCardEntry$NameData;->-set4(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2084
    return-void

    .line 2136
    :pswitch_0
    iget-object v7, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/android/vcard/VCardEntry$NameData;->-set6(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2138
    :pswitch_1
    iget-object v7, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/android/vcard/VCardEntry$NameData;->-set5(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 2133
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 7
    .param p1, "propValue"    # Ljava/lang/String;
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
    .line 2456
    .local p2, "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2457
    return-void

    .line 2459
    :cond_0
    const-string/jumbo v6, "sip:"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2460
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2461
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 2462
    return-void

    .line 2466
    :cond_1
    const/4 v2, -0x1

    .line 2467
    .local v2, "type":I
    const/4 v1, 0x0

    .line 2468
    .local v1, "label":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2469
    .local v0, "isPrimary":Z
    if-eqz p2, :cond_7

    .line 2470
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v1    # "label":Ljava/lang/String;
    .local v4, "typeStringOrg$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2471
    .local v3, "typeStringOrg":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 2472
    .local v5, "typeStringUpperCase":Ljava/lang/String;
    const-string/jumbo v6, "PREF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2473
    const/4 v0, 0x1

    goto :goto_0

    .line 2474
    :cond_3
    const-string/jumbo v6, "HOME"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2475
    const/4 v2, 0x1

    goto :goto_0

    .line 2476
    :cond_4
    const-string/jumbo v6, "WORK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2477
    const/4 v2, 0x2

    goto :goto_0

    .line 2478
    :cond_5
    if-gez v2, :cond_2

    .line 2479
    const-string/jumbo v6, "X-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2480
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2484
    .local v1, "label":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2482
    .end local v1    # "label":Ljava/lang/String;
    :cond_6
    move-object v1, v3

    .restart local v1    # "label":Ljava/lang/String;
    goto :goto_1

    .line 2488
    .end local v1    # "label":Ljava/lang/String;
    .end local v3    # "typeStringOrg":Ljava/lang/String;
    .end local v4    # "typeStringOrg$iterator":Ljava/util/Iterator;
    .end local v5    # "typeStringUpperCase":Ljava/lang/String;
    :cond_7
    if-gez v2, :cond_8

    .line 2489
    const/4 v2, 0x3

    .line 2491
    :cond_8
    invoke-direct {p0, p1, v2, v1, v0}, Lcom/android/vcard/VCardEntry;->addSip(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 2455
    return-void
.end method

.method private handleTitleValue(Ljava/lang/String;)V
    .locals 9
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1965
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, v1

    .line 1968
    invoke-direct/range {v0 .. v6}, Lcom/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1969
    return-void

    .line 1971
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "organizationData$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/vcard/VCardEntry$OrganizationData;

    .line 1972
    .local v7, "organizationData":Lcom/android/vcard/VCardEntry$OrganizationData;
    invoke-static {v7}, Lcom/android/vcard/VCardEntry$OrganizationData;->-get2(Lcom/android/vcard/VCardEntry$OrganizationData;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1973
    invoke-static {v7, p1}, Lcom/android/vcard/VCardEntry$OrganizationData;->-set3(Lcom/android/vcard/VCardEntry$OrganizationData;Ljava/lang/String;)Ljava/lang/String;

    .line 1974
    return-void

    .end local v7    # "organizationData":Lcom/android/vcard/VCardEntry$OrganizationData;
    :cond_2
    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, v1

    .line 1979
    invoke-direct/range {v0 .. v6}, Lcom/android/vcard/VCardEntry;->addNewOrganization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1964
    return-void
.end method

.method private iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V
    .locals 4
    .param p2, "iterator"    # Lcom/android/vcard/VCardEntry$EntryElementIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/vcard/VCardEntry$EntryElement;",
            ">;",
            "Lcom/android/vcard/VCardEntry$EntryElementIterator;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "elemList":Ljava/util/List;, "Ljava/util/List<+Lcom/android/vcard/VCardEntry$EntryElement;>;"
    const/4 v3, 0x0

    .line 1632
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1633
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardEntry$EntryElement;

    invoke-interface {v2}, Lcom/android/vcard/VCardEntry$EntryElement;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "elem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EntryElement;

    .line 1635
    .local v0, "elem":Lcom/android/vcard/VCardEntry$EntryElement;
    invoke-interface {p2, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    goto :goto_0

    .line 1637
    .end local v0    # "elem":Lcom/android/vcard/VCardEntry$EntryElement;
    :cond_0
    invoke-interface {p2}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 1631
    .end local v1    # "elem$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
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
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2616
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 2617
    .local v1, "size":I
    if-le v1, v5, :cond_2

    .line 2618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2620
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "type$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2621
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2622
    add-int/lit8 v4, v1, -0x1

    if-lez v4, :cond_0

    .line 2623
    const-string/jumbo v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2626
    .end local v2    # "type":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2627
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "type$iterator":Ljava/util/Iterator;
    :cond_2
    if-ne v1, v5, :cond_3

    .line 2628
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    return-object v4

    .line 2630
    :cond_3
    const-string/jumbo v4, ""

    return-object v4
.end method

.method private tryHandleSortAsName(Ljava/util/Map;)V
    .locals 8
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
    .local p1, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2015
    iget v3, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2016
    iget-object v3, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v3}, Lcom/android/vcard/VCardEntry$NameData;->-get4(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2017
    iget-object v3, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v3}, Lcom/android/vcard/VCardEntry$NameData;->-get6(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 2016
    if-eqz v3, :cond_4

    .line 2018
    iget-object v3, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v3}, Lcom/android/vcard/VCardEntry$NameData;->-get5(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v3

    .line 2017
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 2016
    if-eqz v3, :cond_4

    .line 2022
    :cond_0
    const-string/jumbo v3, "SORT-AS"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 2023
    .local v1, "sortAsCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_3

    .line 2024
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-le v3, v7, :cond_1

    .line 2025
    const-string/jumbo v3, "vCard"

    .line 2026
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2027
    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2026
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2025
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2030
    iget v4, p0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    .line 2029
    invoke-static {v3, v4}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 2031
    .local v2, "sortNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 2032
    .local v0, "size":I
    const/4 v3, 0x3

    if-le v0, v3, :cond_2

    .line 2033
    const/4 v0, 0x3

    .line 2035
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 2041
    :goto_0
    iget-object v4, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/vcard/VCardEntry$NameData;->-set4(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2014
    .end local v0    # "size":I
    .end local v2    # "sortNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-void

    .line 2019
    .end local v1    # "sortAsCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_4
    return-void

    .line 2037
    .restart local v0    # "size":I
    .restart local v1    # "sortAsCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v2    # "sortNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_0
    iget-object v4, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/vcard/VCardEntry$NameData;->-set6(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    .line 2039
    :pswitch_1
    iget-object v4, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/vcard/VCardEntry$NameData;->-set5(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2035
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addChild(Lcom/android/vcard/VCardEntry;)V
    .locals 1
    .param p1, "child"    # Lcom/android/vcard/VCardEntry;

    .prologue
    .line 2495
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    .line 2498
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2494
    return-void
.end method

.method public addMoreIterateOneList(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V
    .locals 0
    .param p1, "iterator"    # Lcom/android/vcard/VCardEntry$EntryElementIterator;

    .prologue
    .line 2700
    return-void
.end method

.method public addProperty(Lcom/android/vcard/VCardProperty;)V
    .locals 33
    .param p1, "property"    # Lcom/android/vcard/VCardProperty;

    .prologue
    .line 2145
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v18

    .line 2146
    .local v18, "propertyName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getParameterMap()Ljava/util/Map;

    move-result-object v13

    .line 2147
    .local v13, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getValueList()Ljava/util/List;

    move-result-object v19

    .line 2148
    .local v19, "propertyValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getByteValue()[B

    move-result-object v17

    .line 2150
    .local v17, "propertyBytes":[B
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 2151
    :cond_0
    if-nez v17, :cond_1

    .line 2152
    return-void

    .line 2154
    :cond_1
    if-eqz v19, :cond_3

    .line 2155
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardEntry;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2158
    :goto_0
    const-string/jumbo v2, "VERSION"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2144
    :cond_2
    :goto_1
    return-void

    .line 2156
    :cond_3
    const/4 v5, 0x0

    .local v5, "propValue":Ljava/lang/String;
    goto :goto_0

    .line 2160
    .end local v5    # "propValue":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "FN"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v2, v5}, Lcom/android/vcard/VCardEntry$NameData;->-set1(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 2162
    :cond_5
    const-string/jumbo v2, "NAME"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v2}, Lcom/android/vcard/VCardEntry$NameData;->-get1(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v2, v5}, Lcom/android/vcard/VCardEntry$NameData;->-set1(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 2168
    :cond_6
    const-string/jumbo v2, "N"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2169
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v13}, Lcom/android/vcard/VCardEntry;->handleNProperty(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_1

    .line 2170
    :cond_7
    const-string/jumbo v2, "SORT-STRING"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v2, v5}, Lcom/android/vcard/VCardEntry$NameData;->-set8(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 2172
    :cond_8
    const-string/jumbo v2, "NICKNAME"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2173
    const-string/jumbo v2, "X-NICKNAME"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2172
    if-eqz v2, :cond_a

    .line 2174
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/vcard/VCardEntry;->addNickName(Ljava/lang/String;)V

    goto :goto_1

    .line 2175
    :cond_a
    const-string/jumbo v2, "SOUND"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2176
    const-string/jumbo v2, "TYPE"

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Collection;

    .line 2177
    .local v20, "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v20, :cond_2

    .line 2178
    const-string/jumbo v2, "X-IRMC-N"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 2177
    if-eqz v2, :cond_2

    .line 2184
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    .line 2183
    invoke-static {v5, v2}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v16

    .line 2185
    .local v16, "phoneticNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardEntry;->handlePhoneticNameFromSound(Ljava/util/List;)V

    goto/16 :goto_1

    .line 2189
    .end local v16    # "phoneticNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_b
    const-string/jumbo v2, "ADR"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2190
    const/16 v31, 0x1

    .line 2191
    .local v31, "valuesAreAllEmpty":Z
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "value$iterator":Ljava/util/Iterator;
    :cond_c
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 2192
    .local v29, "value":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 2193
    const/16 v31, 0x0

    .line 2197
    .end local v29    # "value":Ljava/lang/String;
    :cond_d
    if-eqz v31, :cond_e

    .line 2198
    return-void

    .line 2201
    :cond_e
    const/4 v6, -0x1

    .line 2202
    .local v6, "type":I
    const/4 v12, 0x0

    .line 2203
    .local v12, "label":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2204
    .local v7, "isPrimary":Z
    const-string/jumbo v2, "TYPE"

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Collection;

    .line 2205
    .restart local v20    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v20, :cond_16

    .line 2206
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .end local v12    # "label":Ljava/lang/String;
    .local v25, "typeStringOrg$iterator":Ljava/util/Iterator;
    :cond_f
    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 2207
    .local v24, "typeStringOrg":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    .line 2208
    .local v26, "typeStringUpperCase":Ljava/lang/String;
    const-string/jumbo v2, "PREF"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2209
    const/4 v7, 0x1

    goto :goto_2

    .line 2210
    :cond_10
    const-string/jumbo v2, "HOME"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2211
    const/4 v6, 0x1

    .line 2212
    const/4 v12, 0x0

    .restart local v12    # "label":Ljava/lang/String;
    goto :goto_2

    .line 2213
    .end local v12    # "label":Ljava/lang/String;
    :cond_11
    const-string/jumbo v2, "WORK"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 2215
    const-string/jumbo v2, "COMPANY"

    .line 2214
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 2213
    if-eqz v2, :cond_13

    .line 2219
    :cond_12
    const/4 v6, 0x2

    .line 2220
    const/4 v12, 0x0

    .restart local v12    # "label":Ljava/lang/String;
    goto :goto_2

    .line 2221
    .end local v12    # "label":Ljava/lang/String;
    :cond_13
    const-string/jumbo v2, "PARCEL"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 2222
    const-string/jumbo v2, "DOM"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2221
    if-nez v2, :cond_f

    .line 2223
    const-string/jumbo v2, "INTL"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2221
    if-nez v2, :cond_f

    .line 2225
    const-string/jumbo v2, "OTHER"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2226
    const/4 v6, 0x3

    .line 2227
    const/4 v12, 0x0

    .restart local v12    # "label":Ljava/lang/String;
    goto :goto_2

    .line 2228
    .end local v12    # "label":Ljava/lang/String;
    :cond_14
    if-gez v6, :cond_f

    .line 2229
    const/4 v6, 0x0

    .line 2230
    const-string/jumbo v2, "X-"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2231
    const/4 v2, 0x2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .local v12, "label":Ljava/lang/String;
    goto/16 :goto_2

    .line 2233
    .end local v12    # "label":Ljava/lang/String;
    :cond_15
    move-object/from16 v12, v24

    .restart local v12    # "label":Ljava/lang/String;
    goto/16 :goto_2

    .line 2239
    .end local v12    # "label":Ljava/lang/String;
    .end local v24    # "typeStringOrg":Ljava/lang/String;
    .end local v25    # "typeStringOrg$iterator":Ljava/util/Iterator;
    .end local v26    # "typeStringUpperCase":Ljava/lang/String;
    :cond_16
    if-gez v6, :cond_17

    .line 2240
    const/4 v6, 0x1

    .line 2243
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v6, v1, v12, v7}, Lcom/android/vcard/VCardEntry;->addPostal(ILjava/util/List;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2244
    .end local v6    # "type":I
    .end local v7    # "isPrimary":Z
    .end local v20    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v30    # "value$iterator":Ljava/util/Iterator;
    .end local v31    # "valuesAreAllEmpty":Z
    :cond_18
    const-string/jumbo v2, "EMAIL"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2245
    const/4 v6, -0x1

    .line 2246
    .restart local v6    # "type":I
    const/4 v12, 0x0

    .line 2247
    .local v12, "label":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2248
    .restart local v7    # "isPrimary":Z
    const-string/jumbo v2, "TYPE"

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Collection;

    .line 2249
    .restart local v20    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v20, :cond_1f

    .line 2250
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .end local v12    # "label":Ljava/lang/String;
    .restart local v25    # "typeStringOrg$iterator":Ljava/util/Iterator;
    :cond_19
    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 2251
    .restart local v24    # "typeStringOrg":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    .line 2252
    .restart local v26    # "typeStringUpperCase":Ljava/lang/String;
    const-string/jumbo v2, "PREF"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2253
    const/4 v7, 0x1

    goto :goto_3

    .line 2254
    :cond_1a
    const-string/jumbo v2, "HOME"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2255
    const/4 v6, 0x1

    goto :goto_3

    .line 2256
    :cond_1b
    const-string/jumbo v2, "WORK"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2257
    const/4 v6, 0x2

    goto :goto_3

    .line 2258
    :cond_1c
    const-string/jumbo v2, "CELL"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2259
    const/4 v6, 0x4

    goto :goto_3

    .line 2260
    :cond_1d
    if-gez v6, :cond_19

    .line 2261
    const-string/jumbo v2, "X-"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2262
    const/4 v2, 0x2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 2266
    .local v12, "label":Ljava/lang/String;
    :goto_4
    const/4 v6, 0x0

    goto :goto_3

    .line 2264
    .end local v12    # "label":Ljava/lang/String;
    :cond_1e
    move-object/from16 v12, v24

    .restart local v12    # "label":Ljava/lang/String;
    goto :goto_4

    .line 2270
    .end local v12    # "label":Ljava/lang/String;
    .end local v24    # "typeStringOrg":Ljava/lang/String;
    .end local v25    # "typeStringOrg$iterator":Ljava/util/Iterator;
    .end local v26    # "typeStringUpperCase":Ljava/lang/String;
    :cond_1f
    if-gez v6, :cond_20

    .line 2271
    const/4 v6, 0x3

    .line 2273
    :cond_20
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5, v12, v7}, Lcom/android/vcard/VCardEntry;->addEmail(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2274
    .end local v6    # "type":I
    .end local v7    # "isPrimary":Z
    .end local v20    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_21
    const-string/jumbo v2, "ORG"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2276
    const/4 v6, 0x1

    .line 2277
    .restart local v6    # "type":I
    const/4 v7, 0x0

    .line 2278
    .restart local v7    # "isPrimary":Z
    const-string/jumbo v2, "TYPE"

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Collection;

    .line 2279
    .restart local v20    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v20, :cond_23

    .line 2280
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "typeString$iterator":Ljava/util/Iterator;
    :cond_22
    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 2281
    .local v22, "typeString":Ljava/lang/String;
    const-string/jumbo v2, "PREF"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2282
    const/4 v7, 0x1

    goto :goto_5

    .line 2286
    .end local v22    # "typeString":Ljava/lang/String;
    .end local v23    # "typeString$iterator":Ljava/util/Iterator;
    :cond_23
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v1, v13, v7}, Lcom/android/vcard/VCardEntry;->handleOrgValue(ILjava/util/List;Ljava/util/Map;Z)V

    goto/16 :goto_1

    .line 2287
    .end local v6    # "type":I
    .end local v7    # "isPrimary":Z
    .end local v20    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_24
    const-string/jumbo v2, "TITLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2288
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/vcard/VCardEntry;->handleTitleValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2289
    :cond_25
    const-string/jumbo v2, "ROLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2292
    const-string/jumbo v2, "PHOTO"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 2293
    const-string/jumbo v2, "LOGO"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2292
    if-eqz v2, :cond_2b

    .line 2294
    :cond_26
    const-string/jumbo v2, "VALUE"

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    .line 2295
    .local v14, "paramMapValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v14, :cond_27

    const-string/jumbo v2, "URL"

    invoke-interface {v14, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2298
    :cond_27
    const-string/jumbo v2, "TYPE"

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Collection;

    .line 2299
    .restart local v20    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 2300
    .local v10, "formatName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2301
    .restart local v7    # "isPrimary":Z
    if-eqz v20, :cond_2a

    .line 2302
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .end local v10    # "formatName":Ljava/lang/String;
    .local v28, "typeValue$iterator":Ljava/util/Iterator;
    :cond_28
    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 2303
    .local v27, "typeValue":Ljava/lang/String;
    const-string/jumbo v2, "PREF"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2304
    const/4 v7, 0x1

    goto :goto_6

    .line 2305
    :cond_29
    if-nez v10, :cond_28

    .line 2306
    move-object/from16 v10, v27

    .local v10, "formatName":Ljava/lang/String;
    goto :goto_6

    .line 2310
    .end local v10    # "formatName":Ljava/lang/String;
    .end local v27    # "typeValue":Ljava/lang/String;
    .end local v28    # "typeValue$iterator":Ljava/util/Iterator;
    :cond_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1, v7}, Lcom/android/vcard/VCardEntry;->addPhotoBytes(Ljava/lang/String;[BZ)V

    goto/16 :goto_1

    .line 2312
    .end local v7    # "isPrimary":Z
    .end local v14    # "paramMapValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v20    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2b
    const-string/jumbo v2, "TEL"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2313
    const/4 v15, 0x0

    .line 2314
    .local v15, "phoneNumber":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2315
    .local v11, "isSip":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    invoke-static {v2}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2318
    const-string/jumbo v2, "sip:"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2319
    const/4 v11, 0x1

    .line 2332
    .end local v15    # "phoneNumber":Ljava/lang/String;
    :goto_7
    if-eqz v11, :cond_2f

    .line 2333
    const-string/jumbo v2, "TYPE"

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Collection;

    .line 2334
    .restart local v20    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/android/vcard/VCardEntry;->handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_1

    .line 2320
    .end local v20    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v15    # "phoneNumber":Ljava/lang/String;
    :cond_2c
    const-string/jumbo v2, "tel:"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2321
    const/4 v2, 0x4

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .local v15, "phoneNumber":Ljava/lang/String;
    goto :goto_7

    .line 2326
    .local v15, "phoneNumber":Ljava/lang/String;
    :cond_2d
    move-object v15, v5

    .local v15, "phoneNumber":Ljava/lang/String;
    goto :goto_7

    .line 2329
    .local v15, "phoneNumber":Ljava/lang/String;
    :cond_2e
    move-object v15, v5

    .local v15, "phoneNumber":Ljava/lang/String;
    goto :goto_7

    .line 2336
    .end local v15    # "phoneNumber":Ljava/lang/String;
    :cond_2f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_30

    .line 2337
    return-void

    .line 2340
    :cond_30
    const-string/jumbo v2, "TYPE"

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Collection;

    .line 2341
    .restart local v20    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, v20

    invoke-static {v0, v15}, Lcom/android/vcard/VCardUtils;->getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    .line 2345
    .local v21, "typeObject":Ljava/lang/Object;
    move-object/from16 v0, v21

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_31

    .line 2346
    check-cast v21, Ljava/lang/Integer;

    .end local v21    # "typeObject":Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2347
    .restart local v6    # "type":I
    const/4 v12, 0x0

    .line 2354
    :goto_8
    if-eqz v20, :cond_32

    .line 2355
    const-string/jumbo v2, "PREF"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 2354
    if-eqz v2, :cond_32

    .line 2356
    const/4 v7, 0x1

    .line 2361
    .restart local v7    # "isPrimary":Z
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15, v12, v7}, Lcom/android/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2349
    .end local v6    # "type":I
    .end local v7    # "isPrimary":Z
    .restart local v21    # "typeObject":Ljava/lang/Object;
    :cond_31
    const/4 v6, 0x0

    .line 2350
    .restart local v6    # "type":I
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "label":Ljava/lang/String;
    goto :goto_8

    .line 2358
    .end local v12    # "label":Ljava/lang/String;
    .end local v21    # "typeObject":Ljava/lang/Object;
    :cond_32
    const/4 v7, 0x0

    .restart local v7    # "isPrimary":Z
    goto :goto_9

    .line 2363
    .end local v6    # "type":I
    .end local v7    # "isPrimary":Z
    .end local v11    # "isSip":Z
    .end local v20    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_33
    const-string/jumbo v2, "X-SKYPE-PSTNNUMBER"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2365
    const-string/jumbo v2, "TYPE"

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Collection;

    .line 2366
    .restart local v20    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v6, 0x7

    .line 2368
    .restart local v6    # "type":I
    if-eqz v20, :cond_34

    .line 2369
    const-string/jumbo v2, "PREF"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 2368
    if-eqz v2, :cond_34

    .line 2370
    const/4 v7, 0x1

    .line 2374
    .restart local v7    # "isPrimary":Z
    :goto_a
    const/4 v2, 0x7

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v2, v5, v1, v7}, Lcom/android/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2372
    .end local v7    # "isPrimary":Z
    :cond_34
    const/4 v7, 0x0

    .restart local v7    # "isPrimary":Z
    goto :goto_a

    .line 2375
    .end local v6    # "type":I
    .end local v7    # "isPrimary":Z
    .end local v20    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_35
    sget-object v2, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 2376
    sget-object v2, Lcom/android/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2377
    .local v3, "protocol":I
    const/4 v7, 0x0

    .line 2378
    .restart local v7    # "isPrimary":Z
    const/4 v6, -0x1

    .line 2379
    .restart local v6    # "type":I
    const-string/jumbo v2, "TYPE"

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Collection;

    .line 2380
    .restart local v20    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v20, :cond_39

    .line 2381
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "typeString$iterator":Ljava/util/Iterator;
    :cond_36
    :goto_b
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 2382
    .restart local v22    # "typeString":Ljava/lang/String;
    const-string/jumbo v2, "PREF"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2383
    const/4 v7, 0x1

    goto :goto_b

    .line 2384
    :cond_37
    if-gez v6, :cond_36

    .line 2385
    const-string/jumbo v2, "HOME"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2386
    const/4 v6, 0x1

    goto :goto_b

    .line 2387
    :cond_38
    const-string/jumbo v2, "WORK"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2388
    const/4 v6, 0x2

    goto :goto_b

    .line 2393
    .end local v22    # "typeString":Ljava/lang/String;
    .end local v23    # "typeString$iterator":Ljava/util/Iterator;
    :cond_39
    if-gez v6, :cond_3a

    .line 2394
    const/4 v6, 0x1

    .line 2396
    :cond_3a
    const/4 v4, 0x0

    .line 2397
    .local v4, "customProtocol":Ljava/lang/String;
    if-eqz v20, :cond_3c

    .line 2398
    const/4 v2, -0x1

    if-ne v3, v2, :cond_3c

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_3c

    .line 2399
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2400
    .local v8, "builder":Ljava/lang/StringBuilder;
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "typeString$iterator":Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 2401
    .restart local v22    # "typeString":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 2403
    .end local v22    # "typeString":Ljava/lang/String;
    :cond_3b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "customProtocol":Ljava/lang/String;
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .end local v23    # "typeString$iterator":Ljava/util/Iterator;
    :cond_3c
    move-object/from16 v2, p0

    .line 2407
    invoke-direct/range {v2 .. v7}, Lcom/android/vcard/VCardEntry;->addIm(ILjava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 2408
    .end local v3    # "protocol":I
    .end local v6    # "type":I
    .end local v7    # "isPrimary":Z
    .end local v20    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_3d
    const-string/jumbo v2, "NOTE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 2409
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/vcard/VCardEntry;->addNote(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2410
    :cond_3e
    const-string/jumbo v2, "URL"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 2411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    if-nez v2, :cond_3f

    .line 2412
    new-instance v2, Ljava/util/ArrayList;

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    .line 2414
    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    new-instance v32, Lcom/android/vcard/VCardEntry$WebsiteData;

    move-object/from16 v0, v32

    invoke-direct {v0, v5}, Lcom/android/vcard/VCardEntry$WebsiteData;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2415
    :cond_40
    const-string/jumbo v2, "BDAY"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 2416
    new-instance v2, Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-direct {v2, v5}, Lcom/android/vcard/VCardEntry$BirthdayData;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    goto/16 :goto_1

    .line 2417
    :cond_41
    const-string/jumbo v2, "ANNIVERSARY"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 2418
    new-instance v2, Lcom/android/vcard/VCardEntry$AnniversaryData;

    invoke-direct {v2, v5}, Lcom/android/vcard/VCardEntry$AnniversaryData;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/vcard/VCardEntry;->mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

    goto/16 :goto_1

    .line 2419
    :cond_42
    const-string/jumbo v2, "X-PHONETIC-FIRST-NAME"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v2, v5}, Lcom/android/vcard/VCardEntry$NameData;->-set5(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 2421
    :cond_43
    const-string/jumbo v2, "X-PHONETIC-MIDDLE-NAME"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 2422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v2, v5}, Lcom/android/vcard/VCardEntry$NameData;->-set6(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 2423
    :cond_44
    const-string/jumbo v2, "X-PHONETIC-LAST-NAME"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 2424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-static {v2, v5}, Lcom/android/vcard/VCardEntry$NameData;->-set4(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 2425
    :cond_45
    const-string/jumbo v2, "IMPP"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 2427
    const-string/jumbo v2, "sip:"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2428
    const-string/jumbo v2, "TYPE"

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Collection;

    .line 2429
    .restart local v20    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/android/vcard/VCardEntry;->handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_1

    .line 2431
    .end local v20    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_46
    const-string/jumbo v2, "X-SIP"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 2432
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2433
    const-string/jumbo v2, "TYPE"

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Collection;

    .line 2434
    .restart local v20    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/android/vcard/VCardEntry;->handleSipCase(Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_1

    .line 2436
    .end local v20    # "typeCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_47
    const-string/jumbo v2, "X-ANDROID-CUSTOM"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 2438
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/vcard/VCardEntry;->mVCardType:I

    .line 2437
    invoke-static {v5, v2}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    .line 2439
    .local v9, "customPropertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/vcard/VCardEntry;->handleAndroidCustomProperty(Ljava/util/List;)V

    goto/16 :goto_1

    .line 2440
    .end local v9    # "customPropertyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_48
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v32, "X-"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardEntry;->mUnknownXData:Ljava/util/List;

    if-nez v2, :cond_49

    .line 2443
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/vcard/VCardEntry;->mUnknownXData:Ljava/util/List;

    .line 2445
    :cond_49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardEntry;->mUnknownXData:Ljava/util/List;

    new-instance v32, Landroid/util/Pair;

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v32

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public consolidateFields()V
    .locals 2

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-direct {p0}, Lcom/android/vcard/VCardEntry;->constructDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    .line 2541
    return-void
.end method

.method public constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
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
    .local p2, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x0

    .line 2576
    if-nez p2, :cond_0

    .line 2577
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2580
    .restart local p2    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry;->isIgnorable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2581
    return-object p2

    .line 2584
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2589
    .local v0, "backReferenceIndex":I
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 2588
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 2590
    .local v1, "builder":Landroid/content/ContentProviderOperation$Builder;
    iget-object v4, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    if-eqz v4, :cond_2

    .line 2591
    const-string/jumbo v4, "account_name"

    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2592
    const-string/jumbo v4, "account_type"

    iget-object v5, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2597
    :goto_0
    const-string/jumbo v4, "aggregation_mode"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2598
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2600
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2601
    .local v3, "start":I
    new-instance v4, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;

    invoke-direct {v4, p0, p2, v0}, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;-><init>(Lcom/android/vcard/VCardEntry;Ljava/util/List;I)V

    invoke-virtual {p0, v4}, Lcom/android/vcard/VCardEntry;->iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2602
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2604
    .local v2, "end":I
    return-object p2

    .line 2594
    .end local v2    # "end":I
    .end local v3    # "start":I
    :cond_2
    const-string/jumbo v4, "account_name"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2595
    const-string/jumbo v4, "account_type"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2686
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2687
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-direct {p0}, Lcom/android/vcard/VCardEntry;->constructDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    .line 2689
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    iget-object v0, v0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhotoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2671
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    return-object v0
.end method

.method public final getPostalList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2659
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    return-object v0
.end method

.method public isIgnorable()Z
    .locals 2

    .prologue
    .line 2554
    new-instance v0, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;-><init>(Lcom/android/vcard/VCardEntry;Lcom/android/vcard/VCardEntry$IsIgnorableIterator;)V

    .line 2555
    .local v0, "iterator":Lcom/android/vcard/VCardEntry$IsIgnorableIterator;
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardEntry;->iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 2556
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$IsIgnorableIterator;->getResult()Z

    move-result v1

    return v1
.end method

.method public final iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V
    .locals 1
    .param p1, "iterator"    # Lcom/android/vcard/VCardEntry$EntryElementIterator;

    .prologue
    .line 1597
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onIterationStarted()V

    .line 1598
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 1599
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNameData:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    .line 1600
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 1602
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1603
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1604
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1605
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1606
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mImList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1607
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1608
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1609
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mSipList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1610
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNicknameList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1611
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1612
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAndroidCustomDataList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->iterateOneList(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1614
    invoke-virtual {p0, p1}, Lcom/android/vcard/VCardEntry;->addMoreIterateOneList(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1617
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$BirthdayData;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 1619
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mBirthday:Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    .line 1620
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 1622
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

    if-eqz v0, :cond_1

    .line 1623
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$AnniversaryData;->getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 1624
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->mAnniversary:Lcom/android/vcard/VCardEntry$AnniversaryData;

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    .line 1625
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onElementGroupEnded()V

    .line 1627
    :cond_1
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->onIterationEnded()V

    .line 1596
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1762
    new-instance v0, Lcom/android/vcard/VCardEntry$ToStringIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vcard/VCardEntry$ToStringIterator;-><init>(Lcom/android/vcard/VCardEntry;Lcom/android/vcard/VCardEntry$ToStringIterator;)V

    .line 1763
    .local v0, "iterator":Lcom/android/vcard/VCardEntry$ToStringIterator;
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardEntry;->iterateAllData(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1764
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$ToStringIterator;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
