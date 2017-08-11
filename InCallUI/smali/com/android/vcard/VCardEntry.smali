.class public Lcom/android/vcard/VCardEntry;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardEntry$EntryLabel;,
        Lcom/android/vcard/VCardEntry$EntryElement;,
        Lcom/android/vcard/VCardEntry$NameData;,
        Lcom/android/vcard/VCardEntry$BirthdayData;,
        Lcom/android/vcard/VCardEntry$AnniversaryData;,
        Lcom/android/vcard/VCardEntry$EntryElementIterator;,
        Lcom/android/vcard/VCardEntry$ToStringIterator;
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


# virtual methods
.method public addMoreIterateOneList(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V
    .locals 0
    .param p1, "iterator"    # Lcom/android/vcard/VCardEntry$EntryElementIterator;

    .prologue
    .line 2700
    return-void
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
