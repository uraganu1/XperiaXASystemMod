.class public Lcom/android/contacts/common/model/RawContactModifier;
.super Ljava/lang/Object;
.source "RawContactModifier.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static mHasSip:Z

.field public static mIsSimType:Z

.field private static final sGenericMimeTypesWithTypeSupport:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 91
    const-class v0, Lcom/android/contacts/common/model/RawContactModifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/RawContactModifier;->TAG:Ljava/lang/String;

    .line 1072
    new-instance v0, Ljava/util/HashSet;

    .line 1073
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    aput-object v2, v1, v4

    .line 1074
    const-string/jumbo v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v1, v5

    .line 1075
    const-string/jumbo v2, "vnd.android.cursor.item/im"

    aput-object v2, v1, v6

    .line 1076
    const-string/jumbo v2, "vnd.android.cursor.item/nickname"

    aput-object v2, v1, v7

    .line 1077
    const-string/jumbo v2, "vnd.android.cursor.item/website"

    aput-object v2, v1, v8

    .line 1078
    const-string/jumbo v2, "vnd.android.cursor.item/relation"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 1079
    const-string/jumbo v2, "vnd.android.cursor.item/sip_address"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 1073
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1072
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/contacts/common/model/RawContactModifier;->sGenericMimeTypesWithTypeSupport:Ljava/util/Set;

    .line 1080
    new-instance v0, Ljava/util/HashSet;

    .line 1081
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "vnd.android.cursor.item/organization"

    aput-object v2, v1, v4

    .line 1082
    const-string/jumbo v2, "vnd.android.cursor.item/note"

    aput-object v2, v1, v5

    .line 1083
    const-string/jumbo v2, "vnd.android.cursor.item/photo"

    aput-object v2, v1, v6

    .line 1084
    const-string/jumbo v2, "vnd.android.cursor.item/group_membership"

    aput-object v2, v1, v7

    .line 1086
    const-string/jumbo v2, "vnd.android.cursor.item/ims"

    aput-object v2, v1, v8

    .line 1081
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1080
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/contacts/common/model/RawContactModifier;->sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;

    .line 1565
    sput-boolean v4, Lcom/android/contacts/common/model/RawContactModifier;->mIsSimType:Z

    .line 1566
    sput-boolean v4, Lcom/android/contacts/common/model/RawContactModifier;->mHasSip:Z

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getType(Lcom/android/contacts/common/model/dataitem/DataKind;I)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 3
    .param p0, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p1, "rawValue"    # I

    .prologue
    .line 291
    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "type$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 292
    .local v0, "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v2, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-ne v2, p1, :cond_0

    .line 293
    return-object v0

    .line 296
    .end local v0    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method
