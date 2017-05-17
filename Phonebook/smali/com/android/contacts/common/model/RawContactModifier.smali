.class public Lcom/android/contacts/common/model/RawContactModifier;
.super Ljava/lang/Object;
.source "RawContactModifier.java"


# static fields
.field private static final COLUMN_FOR_LABEL:Ljava/lang/String; = "data3"

.field private static final COLUMN_FOR_TYPE:Ljava/lang/String; = "data2"

.field private static final DEBUG:Z = false

.field private static final FREQUENCY_TOTAL:I = -0x80000000

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_CUSTOM:I

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

    .line 84
    const-class v0, Lcom/android/contacts/common/model/RawContactModifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/RawContactModifier;->TAG:Ljava/lang/String;

    .line 969
    new-instance v0, Ljava/util/HashSet;

    .line 970
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    aput-object v2, v1, v4

    .line 971
    const-string/jumbo v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v1, v5

    .line 972
    const-string/jumbo v2, "vnd.android.cursor.item/im"

    aput-object v2, v1, v6

    .line 973
    const-string/jumbo v2, "vnd.android.cursor.item/nickname"

    aput-object v2, v1, v7

    .line 974
    const-string/jumbo v2, "vnd.android.cursor.item/website"

    aput-object v2, v1, v8

    .line 975
    const-string/jumbo v2, "vnd.android.cursor.item/relation"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 976
    const-string/jumbo v2, "vnd.android.cursor.item/sip_address"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 970
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 969
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/contacts/common/model/RawContactModifier;->sGenericMimeTypesWithTypeSupport:Ljava/util/Set;

    .line 977
    new-instance v0, Ljava/util/HashSet;

    .line 978
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "vnd.android.cursor.item/organization"

    aput-object v2, v1, v4

    .line 979
    const-string/jumbo v2, "vnd.android.cursor.item/note"

    aput-object v2, v1, v5

    .line 980
    const-string/jumbo v2, "vnd.android.cursor.item/photo"

    aput-object v2, v1, v6

    .line 981
    const-string/jumbo v2, "vnd.android.cursor.item/group_membership"

    aput-object v2, v1, v7

    .line 978
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 977
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/contacts/common/model/RawContactModifier;->sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustType(Lcom/android/contacts/common/model/ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 8
    .param p0, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p2, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 827
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    if-nez v5, :cond_1

    .line 828
    :cond_0
    return v7

    .line 827
    :cond_1
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 831
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 832
    .local v4, "typeInteger":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 834
    .local v3, "type":I
    :goto_0
    invoke-static {v3, p1, p2}, Lcom/android/contacts/common/model/RawContactModifier;->isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 835
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 836
    return v7

    .line 832
    .end local v3    # "type":I
    :cond_2
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/account/AccountType$EditType;

    iget v3, v5, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    .restart local v3    # "type":I
    goto :goto_0

    .line 840
    :cond_3
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 841
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 842
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 843
    .local v0, "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v5, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-static {v5, p1, p2}, Lcom/android/contacts/common/model/RawContactModifier;->isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 844
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    iget v6, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 845
    return v7

    .line 841
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 849
    .end local v0    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_5
    return v6
.end method

.method private static appendAddressPart(Landroid/content/ContentValues;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "fullAddress"    # Ljava/lang/StringBuilder;
    .param p2, "appendPart"    # Ljava/lang/String;

    .prologue
    .line 814
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 815
    .local v0, "addressPart":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 816
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    :cond_0
    return-void
.end method

.method protected static areEqual(Lcom/android/contacts/common/model/ValuesDelta;Landroid/content/ContentValues;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 6
    .param p0, "values1"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p1, "values2"    # Landroid/content/ContentValues;
    .param p2, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/4 v5, 0x0

    .line 489
    iget-object v4, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-nez v4, :cond_0

    return v5

    .line 491
    :cond_0
    iget-object v4, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "field$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 492
    .local v0, "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    iget-object v4, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, "value1":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 494
    .local v3, "value2":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 495
    return v5

    .line 499
    .end local v0    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    .end local v2    # "value1":Ljava/lang/String;
    .end local v3    # "value2":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    return v4
.end method

.method public static canInsert(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 5
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 96
    iget-object v3, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v2

    .line 97
    .local v2, "visibleCount":I
    invoke-static {p0, p1}, Lcom/android/contacts/common/model/RawContactModifier;->hasValidTypes(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v1

    .line 98
    .local v1, "validTypes":Z
    iget v3, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 99
    iget v3, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    if-ge v2, v3, :cond_1

    const/4 v0, 0x1

    .line 100
    .local v0, "validOverall":Z
    :goto_0
    if-eqz v1, :cond_2

    .end local v0    # "validOverall":Z
    :goto_1
    return v0

    .line 98
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "validOverall":Z
    goto :goto_0

    .line 99
    .end local v0    # "validOverall":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "validOverall":Z
    goto :goto_0

    .line 100
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static ensureEntryMaxSize(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "newState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const/4 v3, 0x0

    .line 1047
    if-nez p2, :cond_0

    .line 1048
    return-object v3

    .line 1051
    :cond_0
    iget v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 1052
    .local v2, "typeOverallMax":I
    if-ltz v2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 1053
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1054
    .local v1, "newMimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1055
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1054
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1057
    :cond_1
    move-object p2, v1

    .line 1059
    .end local v0    # "i":I
    .end local v1    # "newMimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_2
    return-object p2
.end method

.method public static ensureKindExists(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 7
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 119
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v2

    .line 120
    .local v2, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    invoke-virtual {p0, p2, v5}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 122
    .local v1, "hasChild":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 123
    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/ValuesDelta;

    return-object v3

    .line 120
    .end local v1    # "hasChild":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "hasChild":Z
    goto :goto_0

    .line 128
    :cond_1
    invoke-static {p0, v2}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    .line 129
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    iget-object v3, v2, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string/jumbo v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    invoke-virtual {v0, v5}, Lcom/android/contacts/common/model/ValuesDelta;->setFromTemplate(Z)V

    .line 132
    :cond_2
    return-object v0

    .line 135
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_3
    return-object v6
.end method

.method private static fixupLegacyImType(Landroid/os/Bundle;)V
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 907
    const-string/jumbo v3, "im_protocol"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 908
    .local v1, "encodedString":Ljava/lang/String;
    if-nez v1, :cond_0

    return-void

    .line 911
    :cond_0
    :try_start_0
    invoke-static {v1}, Landroid/provider/Contacts$ContactMethods;->decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 913
    .local v2, "protocol":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 914
    const-string/jumbo v3, "im_protocol"

    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "protocol":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 906
    :goto_0
    return-void

    .line 916
    .restart local v2    # "protocol":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v3, "im_protocol"

    check-cast v2, Ljava/lang/String;

    .end local v2    # "protocol":Ljava/lang/Object;
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 918
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static getBestValidType(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;ZI)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 12
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "includeSecondary"    # Z
    .param p3, "exactValue"    # I

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 275
    iget-object v7, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-nez v7, :cond_0

    return-object v9

    .line 278
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/common/model/RawContactModifier;->getTypeFrequencies(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Landroid/util/SparseIntArray;

    move-result-object v4

    .line 279
    .local v4, "typeCount":Landroid/util/SparseIntArray;
    invoke-static {p0, p1, v9, p2, v4}, Lcom/android/contacts/common/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 281
    .local v5, "validTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountType$EditType;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    return-object v9

    .line 284
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 287
    .local v2, "lastType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 288
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/contacts/common/model/account/AccountType$EditType;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 289
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 290
    .local v3, "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v7, v3, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {v4, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 292
    .local v0, "count":I
    iget v7, v3, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-ne p3, v7, :cond_3

    .line 294
    return-object v3

    .line 298
    :cond_3
    iget v7, v3, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-eq v11, v7, :cond_4

    iget v7, v3, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-ne v10, v7, :cond_5

    .line 299
    :cond_4
    move-object v2, v3

    .line 302
    :cond_5
    if-lez v0, :cond_2

    .line 304
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 309
    .end local v0    # "count":I
    .end local v3    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_a

    .line 310
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 312
    .local v6, "valueType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v7, v6, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-nez v7, :cond_8

    iget v7, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-ne v11, v7, :cond_8

    .line 315
    :cond_7
    return-object v2

    .line 313
    :cond_8
    iget v7, v6, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-nez v7, :cond_9

    .line 314
    iget v7, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-eq v10, v7, :cond_7

    .line 317
    :cond_9
    return-object v6

    .line 319
    .end local v6    # "valueType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_a
    return-object v2
.end method

.method public static getCurrentType(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 3
    .param p0, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/4 v2, 0x0

    .line 250
    iget-object v1, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 251
    .local v0, "rawValue":Ljava/lang/Long;
    if-nez v0, :cond_0

    return-object v2

    .line 252
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/contacts/common/model/RawContactModifier;->getType(Lcom/android/contacts/common/model/dataitem/DataKind;I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    return-object v1
.end method

.method private static getEntryCountByType(Ljava/util/ArrayList;Ljava/lang/String;I)I
    .locals 5
    .param p1, "typeColumn"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 889
    .local p0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const/4 v0, 0x0

    .line 890
    .local v0, "count":I
    if-eqz p0, :cond_1

    .line 891
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    .line 892
    .local v1, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v1, p1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 893
    .local v3, "typeInteger":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 894
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 898
    .end local v1    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "typeInteger":Ljava/lang/Integer;
    :cond_1
    return v0
.end method

.method public static getType(Lcom/android/contacts/common/model/dataitem/DataKind;I)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 3
    .param p0, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p1, "rawValue"    # I

    .prologue
    .line 259
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

    .line 260
    .local v0, "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v2, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-ne v2, p1, :cond_0

    .line 261
    return-object v0

    .line 264
    .end local v0    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getTypeFrequencies(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Landroid/util/SparseIntArray;
    .locals 9
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 214
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 217
    .local v6, "typeCount":Landroid/util/SparseIntArray;
    iget-object v7, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 218
    .local v3, "mimeEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v3, :cond_0

    return-object v6

    .line 220
    :cond_0
    const/4 v4, 0x0

    .line 221
    .local v4, "totalCount":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    .line 223
    .local v1, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 224
    add-int/lit8 v4, v4, 0x1

    .line 226
    invoke-static {v1, p1}, Lcom/android/contacts/common/model/RawContactModifier;->getCurrentType(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v5

    .line 227
    .local v5, "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    if-eqz v5, :cond_1

    .line 228
    iget v7, v5, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 229
    .local v0, "count":I
    iget v7, v5, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 232
    .end local v0    # "count":I
    .end local v1    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v5    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_2
    const/high16 v7, -0x80000000

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 233
    return-object v6
.end method

.method public static getValidTypes(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 144
    const/4 v0, 0x1

    invoke-static {p0, p1, v1, v0, v1}, Lcom/android/contacts/common/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getValidTypes(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "forceInclude"    # Lcom/android/contacts/common/model/account/AccountType$EditType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            "Lcom/android/contacts/common/model/account/AccountType$EditType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/contacts/common/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getValidTypes(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "forceInclude"    # Lcom/android/contacts/common/model/account/AccountType$EditType;
    .param p3, "includeSecondary"    # Z
    .param p4, "typeCount"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            "Lcom/android/contacts/common/model/account/AccountType$EditType;",
            "Z",
            "Landroid/util/SparseIntArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 177
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v7, "validTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountType$EditType;>;"
    invoke-static {p1}, Lcom/android/contacts/common/model/RawContactModifier;->hasEditTypes(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v8

    if-nez v8, :cond_0

    return-object v7

    .line 182
    :cond_0
    if-nez p4, :cond_1

    .line 184
    invoke-static {p0, p1}, Lcom/android/contacts/common/model/RawContactModifier;->getTypeFrequencies(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Landroid/util/SparseIntArray;

    move-result-object p4

    .line 188
    :cond_1
    const/high16 v8, -0x80000000

    invoke-virtual {p4, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 189
    .local v1, "overallCount":I
    iget-object v8, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "type$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 190
    .local v2, "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v8, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    if-ne v8, v10, :cond_6

    const/4 v4, 0x1

    .line 192
    .local v4, "validOverall":Z
    :goto_1
    iget v8, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->specificMax:I

    if-ne v8, v10, :cond_8

    :cond_3
    const/4 v6, 0x1

    .line 194
    .local v6, "validSpecific":Z
    :goto_2
    if-eqz p3, :cond_9

    :cond_4
    const/4 v5, 0x1

    .line 195
    .local v5, "validSecondary":Z
    :goto_3
    invoke-virtual {v2, p2}, Lcom/android/contacts/common/model/account/AccountType$EditType;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 196
    .local v0, "forcedInclude":Z
    if-nez v0, :cond_5

    if-eqz v4, :cond_2

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    .line 198
    :cond_5
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    .end local v0    # "forcedInclude":Z
    .end local v4    # "validOverall":Z
    .end local v5    # "validSecondary":Z
    .end local v6    # "validSpecific":Z
    :cond_6
    iget v8, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    if-ge v1, v8, :cond_7

    const/4 v4, 0x1

    .restart local v4    # "validOverall":Z
    goto :goto_1

    .end local v4    # "validOverall":Z
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "validOverall":Z
    goto :goto_1

    .line 193
    :cond_8
    iget v8, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    .line 192
    invoke-virtual {p4, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 193
    iget v9, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->specificMax:I

    .line 192
    if-lt v8, v9, :cond_3

    const/4 v6, 0x0

    .restart local v6    # "validSpecific":Z
    goto :goto_2

    .line 194
    :cond_9
    iget-boolean v8, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->secondary:Z

    if-eqz v8, :cond_4

    const/4 v5, 0x0

    .restart local v5    # "validSecondary":Z
    goto :goto_3

    .line 202
    .end local v2    # "type":Lcom/android/contacts/common/model/account/AccountType$EditType;
    .end local v4    # "validOverall":Z
    .end local v5    # "validSecondary":Z
    .end local v6    # "validSpecific":Z
    :cond_a
    return-object v7
.end method

.method private static hasChanges(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)Z
    .locals 8
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    .line 444
    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "kind$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 445
    .local v4, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-object v6, v4, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 446
    .local v6, "mimeType":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 447
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v0, :cond_0

    .line 449
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    .line 452
    .local v1, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v1, v4}, Lcom/android/contacts/common/model/RawContactModifier;->isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    const/4 v3, 0x0

    .line 453
    .local v3, "isRealInsert":Z
    :goto_0
    if-nez v3, :cond_3

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isUpdate()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 454
    :cond_3
    const/4 v7, 0x1

    return v7

    .line 452
    .end local v3    # "isRealInsert":Z
    :cond_4
    const/4 v3, 0x1

    .restart local v3    # "isRealInsert":Z
    goto :goto_0

    .line 458
    .end local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v1    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "isRealInsert":Z
    .end local v4    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    return v7
.end method

.method public static hasChanges(Lcom/android/contacts/common/model/RawContactDeltaList;Lcom/android/contacts/common/model/AccountTypeManager;)Z
    .locals 8
    .param p0, "set"    # Lcom/android/contacts/common/model/RawContactDeltaList;
    .param p1, "accountTypes"    # Lcom/android/contacts/common/model/AccountTypeManager;

    .prologue
    const/4 v7, 0x1

    .line 382
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->isMarkedForUnlinking()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->isMarkedForJoining()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 383
    :cond_0
    return v7

    .line 386
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "state$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/RawContactDelta;

    .line 387
    .local v2, "state":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    .line 388
    .local v5, "values":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "accountType":Ljava/lang/String;
    const-string/jumbo v6, "data_set"

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, "dataSet":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v4

    .line 391
    .local v4, "type":Lcom/android/contacts/common/model/account/AccountType;
    invoke-static {v2, v4}, Lcom/android/contacts/common/model/RawContactModifier;->hasChanges(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 392
    return v7

    .line 395
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "dataSet":Ljava/lang/String;
    .end local v2    # "state":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v4    # "type":Lcom/android/contacts/common/model/account/AccountType;
    .end local v5    # "values":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_3
    const/4 v6, 0x0

    return v6
.end method

.method public static hasEditTypes(Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 2
    .param p0, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/4 v0, 0x0

    .line 241
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static hasValidTypes(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 3
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-static {p1}, Lcom/android/contacts/common/model/RawContactModifier;->hasEditTypes(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    invoke-static {p0, p1}, Lcom/android/contacts/common/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 107
    :cond_1
    return v0
.end method

.method public static insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 3
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/high16 v2, -0x80000000

    .line 330
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->getBestValidType(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;ZI)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    .line 331
    .local v0, "bestType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    if-nez v0, :cond_0

    .line 333
    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->getBestValidType(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;ZI)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    .line 335
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    return-object v1
.end method

.method public static insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 4
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "type"    # Lcom/android/contacts/common/model/account/AccountType$EditType;

    .prologue
    const/4 v2, 0x0

    .line 344
    if-nez p1, :cond_0

    return-object v2

    .line 345
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 348
    .local v0, "after":Landroid/content/ContentValues;
    const-string/jumbo v2, "mimetype"

    iget-object v3, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    if-eqz v2, :cond_1

    .line 352
    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 355
    :cond_1
    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 357
    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    iget v3, p2, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    :cond_2
    invoke-static {v0}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    .line 361
    .local v1, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 362
    return-object v1
.end method

.method public static isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 7
    .param p0, "values"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 466
    const-string/jumbo v5, "vnd.android.cursor.item/photo"

    iget-object v6, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 467
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "data15"

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/model/ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    .line 471
    :cond_1
    iget-object v5, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-nez v5, :cond_2

    return v3

    .line 473
    :cond_2
    iget-object v5, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "field$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 475
    .local v0, "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    iget-object v5, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 477
    return v4

    .line 481
    .end local v0    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    .end local v2    # "value":Ljava/lang/String;
    :cond_4
    return v3
.end method

.method private static isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 7
    .param p0, "type"    # I
    .param p2, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 858
    const/4 v2, 0x0

    .line 859
    .local v2, "max":I
    iget-object v6, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 860
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 861
    iget-object v6, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 862
    .local v0, "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v6, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-ne v6, p0, :cond_1

    .line 863
    iget v2, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->specificMax:I

    .line 868
    .end local v0    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_0
    if-nez v2, :cond_2

    .line 870
    return v5

    .line 860
    .restart local v0    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 873
    .end local v0    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_2
    const/4 v6, -0x1

    if-ne v2, v6, :cond_3

    .line 875
    return v4

    .line 878
    :cond_3
    iget-object v6, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-static {p1, v6, p0}, Lcom/android/contacts/common/model/RawContactModifier;->getEntryCountByType(Ljava/util/ArrayList;Ljava/lang/String;I)I

    move-result v6

    if-ge v6, v2, :cond_4

    :goto_1
    return v4

    :cond_4
    move v4, v5

    goto :goto_1
.end method

.method public static migrateEvent(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/Integer;)V
    .locals 22
    .param p0, "oldState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "newState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "newDataKind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p3, "defaultYear"    # Ljava/lang/Integer;

    .prologue
    .line 1239
    const-string/jumbo v3, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1238
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/common/model/RawContactModifier;->ensureEntryMaxSize(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v16

    .line 1240
    .local v16, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1241
    :cond_0
    return-void

    .line 1244
    :cond_1
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 1245
    .local v9, "allowedTypes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/contacts/common/model/account/AccountType$EventEditType;>;"
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "editType$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 1246
    .local v12, "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v3, v12, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    check-cast v12, Lcom/android/contacts/common/model/account/AccountType$EventEditType;

    .end local v12    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    invoke-virtual {v9, v3, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1248
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/contacts/common/model/ValuesDelta;

    .line 1249
    .local v14, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v14}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v20

    .line 1250
    .local v20, "values":Landroid/content/ContentValues;
    if-eqz v20, :cond_3

    .line 1253
    const-string/jumbo v3, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1254
    .local v11, "dateString":Ljava/lang/String;
    const-string/jumbo v3, "data2"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 1255
    .local v19, "type":Ljava/lang/Integer;
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_3

    .line 1256
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1257
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/contacts/common/model/account/AccountType$EventEditType;

    .line 1259
    .local v18, "suitableType":Lcom/android/contacts/common/model/account/AccountType$EventEditType;
    new-instance v17, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1260
    .local v17, "position":Ljava/text/ParsePosition;
    const/16 v21, 0x0

    .line 1261
    .local v21, "yearOptional":Z
    invoke-static {}, Lcom/android/contacts/util/DateUtils;->getDateAndTimeFormat()Ljava/text/SimpleDateFormat;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v10

    .line 1262
    .local v10, "date":Ljava/util/Date;
    if-nez v10, :cond_4

    .line 1263
    const/16 v21, 0x1

    .line 1264
    invoke-static {}, Lcom/android/contacts/util/DateUtils;->getNoYearDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v10

    .line 1266
    :cond_4
    if-eqz v10, :cond_5

    .line 1267
    if-eqz v21, :cond_5

    if-eqz v18, :cond_5

    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/model/account/AccountType$EventEditType;->isYearOptional()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1284
    :cond_5
    :goto_2
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_1

    .line 1269
    :cond_6
    sget-object v3, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    .line 1270
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1269
    invoke-static {v3, v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 1271
    .local v2, "calendar":Ljava/util/Calendar;
    if-nez p3, :cond_7

    .line 1272
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 1274
    :cond_7
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1275
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1276
    .local v4, "month":I
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1278
    .local v5, "day":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1279
    invoke-static {}, Lcom/android/contacts/editor/EventFieldEditorView;->getDefaultHourForBirthday()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1278
    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1280
    const-string/jumbo v3, "data1"

    .line 1281
    invoke-static {}, Lcom/android/contacts/util/DateUtils;->getFullDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1280
    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1237
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v4    # "month":I
    .end local v5    # "day":I
    .end local v10    # "date":Ljava/util/Date;
    .end local v11    # "dateString":Ljava/lang/String;
    .end local v14    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v17    # "position":Ljava/text/ParsePosition;
    .end local v18    # "suitableType":Lcom/android/contacts/common/model/account/AccountType$EventEditType;
    .end local v19    # "type":Ljava/lang/Integer;
    .end local v20    # "values":Landroid/content/ContentValues;
    .end local v21    # "yearOptional":Z
    :cond_8
    return-void
.end method

.method public static migrateGenericWithTypeColumn(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 22
    .param p0, "oldState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "newState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "newDataKind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 1311
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1312
    .local v11, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1313
    :cond_0
    return-void

    .line 1334
    :cond_1
    const/4 v6, 0x0

    .line 1335
    .local v6, "defaultType":Ljava/lang/Integer;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 1336
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v19, v0

    const-string/jumbo v20, "data2"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1338
    .end local v6    # "defaultType":Ljava/lang/Integer;
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1340
    .local v3, "allowedTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v17, Landroid/util/SparseIntArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseIntArray;-><init>()V

    .line 1341
    .local v17, "typeSpecificMaxMap":Landroid/util/SparseIntArray;
    if-eqz v6, :cond_3

    .line 1342
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1343
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1349
    :cond_3
    const-string/jumbo v19, "vnd.android.cursor.item/im"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 1350
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1360
    :cond_4
    :goto_0
    if-nez v6, :cond_5

    .line 1361
    sget-object v19, Lcom/android/contacts/common/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Default type isn\'t available for mimetype "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    :cond_5
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    move/from16 v16, v0

    .line 1367
    .local v16, "typeOverallMax":I
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    .line 1368
    .local v5, "currentEntryCount":Landroid/util/SparseIntArray;
    const/4 v14, 0x0

    .line 1370
    .local v14, "totalCount":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "entry$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/common/model/ValuesDelta;

    .line 1371
    .local v9, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    move/from16 v0, v16

    if-lt v14, v0, :cond_a

    .line 1310
    .end local v9    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_7
    return-void

    .line 1351
    .end local v5    # "currentEntryCount":Landroid/util/SparseIntArray;
    .end local v10    # "entry$iterator":Ljava/util/Iterator;
    .end local v14    # "totalCount":I
    .end local v16    # "typeOverallMax":I
    :cond_8
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "editType$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 1352
    .local v7, "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1353
    iget v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    move/from16 v19, v0

    iget v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditType;->specificMax:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    .line 1355
    .end local v7    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    :cond_9
    if-nez v6, :cond_4

    .line 1356
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .local v6, "defaultType":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 1375
    .end local v6    # "defaultType":Ljava/lang/Integer;
    .end local v8    # "editType$iterator":Ljava/util/Iterator;
    .restart local v5    # "currentEntryCount":Landroid/util/SparseIntArray;
    .restart local v9    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v10    # "entry$iterator":Ljava/util/Iterator;
    .restart local v14    # "totalCount":I
    .restart local v16    # "typeOverallMax":I
    :cond_a
    invoke-virtual {v9}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v18

    .line 1376
    .local v18, "values":Landroid/content/ContentValues;
    if-eqz v18, :cond_6

    .line 1380
    const-string/jumbo v19, "data2"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 1382
    .local v12, "oldType":Ljava/lang/Integer;
    invoke-interface {v3, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_e

    .line 1384
    if-eqz v6, :cond_d

    .line 1385
    move-object v15, v6

    .line 1386
    .local v15, "typeForNewAccount":Ljava/lang/Integer;
    const-string/jumbo v19, "data2"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1387
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-nez v19, :cond_b

    .line 1388
    const-string/jumbo v19, "data3"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1397
    .end local v15    # "typeForNewAccount":Ljava/lang/Integer;
    :cond_b
    :goto_3
    if-eqz v15, :cond_c

    .line 1398
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .line 1399
    .local v13, "specificMax":I
    if-ltz v13, :cond_c

    .line 1400
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 1401
    .local v4, "currentCount":I
    if-ge v4, v13, :cond_6

    .line 1404
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v19

    add-int/lit8 v20, v4, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1407
    .end local v4    # "currentCount":I
    .end local v13    # "specificMax":I
    :cond_c
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 1408
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1391
    :cond_d
    const/4 v15, 0x0

    .line 1392
    .local v15, "typeForNewAccount":Ljava/lang/Integer;
    const-string/jumbo v19, "data2"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_3

    .line 1395
    .end local v15    # "typeForNewAccount":Ljava/lang/Integer;
    :cond_e
    move-object v15, v12

    .local v15, "typeForNewAccount":Ljava/lang/Integer;
    goto :goto_3
.end method

.method public static migrateGenericWithoutTypeColumn(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 5
    .param p0, "oldState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "newState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "newDataKind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 1295
    iget-object v4, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1294
    invoke-static {p1, p2, v4}, Lcom/android/contacts/common/model/RawContactModifier;->ensureEntryMaxSize(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1296
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1297
    :cond_0
    return-void

    .line 1300
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 1301
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v3

    .line 1302
    .local v3, "values":Landroid/content/ContentValues;
    if-eqz v3, :cond_2

    .line 1303
    invoke-static {v3}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0

    .line 1293
    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_3
    return-void
.end method

.method public static migratePostal(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 26
    .param p0, "oldState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "newState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "newDataKind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 1125
    const-string/jumbo v22, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v22

    .line 1124
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->ensureEntryMaxSize(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1126
    .local v14, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1127
    :cond_0
    return-void

    .line 1130
    :cond_1
    const/16 v17, 0x0

    .line 1131
    .local v17, "supportFormattedAddress":Z
    const/16 v18, 0x0

    .line 1132
    .local v18, "supportStreet":Z
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-object/from16 v0, v22

    iget-object v12, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 1133
    .local v12, "firstColumn":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "editField$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 1134
    .local v5, "editField":Lcom/android/contacts/common/model/account/AccountType$EditField;
    const-string/jumbo v22, "data1"

    iget-object v0, v5, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1135
    const/16 v17, 0x1

    .line 1137
    :cond_3
    const-string/jumbo v22, "data4"

    iget-object v0, v5, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 1138
    const/16 v18, 0x1

    goto :goto_0

    .line 1142
    .end local v5    # "editField":Lcom/android/contacts/common/model/account/AccountType$EditField;
    :cond_4
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 1143
    .local v19, "supportedTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1149
    :cond_5
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "entry$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/common/model/ValuesDelta;

    .line 1150
    .local v10, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v10}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v21

    .line 1151
    .local v21, "values":Landroid/content/ContentValues;
    if-eqz v21, :cond_6

    .line 1154
    const-string/jumbo v22, "data2"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 1155
    .local v15, "oldType":Ljava/lang/Integer;
    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 1156
    const/4 v4, 0x1

    .line 1157
    .local v4, "defaultType":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    .line 1158
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v22, v0

    const-string/jumbo v23, "data2"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    .line 1157
    if-eqz v22, :cond_b

    .line 1159
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v22, v0

    const-string/jumbo v23, "data2"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1165
    :cond_7
    :goto_2
    const-string/jumbo v22, "data2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1166
    if-eqz v15, :cond_8

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v22

    if-nez v22, :cond_8

    .line 1167
    const-string/jumbo v22, "data3"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1171
    .end local v4    # "defaultType":I
    :cond_8
    const-string/jumbo v22, "data1"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1172
    .local v13, "formattedAddress":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 1173
    if-nez v17, :cond_9

    .line 1175
    const-string/jumbo v22, "data1"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1180
    if-eqz v18, :cond_c

    .line 1181
    const-string/jumbo v22, "data4"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    :cond_9
    :goto_3
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto/16 :goto_1

    .line 1144
    .end local v10    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v11    # "entry$iterator":Ljava/util/Iterator;
    .end local v13    # "formattedAddress":Ljava/lang/String;
    .end local v15    # "oldType":Ljava/lang/Integer;
    .end local v21    # "values":Landroid/content/ContentValues;
    :cond_a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "editType$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/model/account/AccountType$EditType;

    .line 1145
    .local v7, "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    iget v0, v7, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1161
    .end local v7    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    .end local v8    # "editType$iterator":Ljava/util/Iterator;
    .restart local v4    # "defaultType":I
    .restart local v10    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v11    # "entry$iterator":Ljava/util/Iterator;
    .restart local v15    # "oldType":Ljava/lang/Integer;
    .restart local v21    # "values":Landroid/content/ContentValues;
    :cond_b
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_7

    .line 1162
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    goto/16 :goto_2

    .line 1183
    .end local v4    # "defaultType":I
    .restart local v13    # "formattedAddress":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1187
    :cond_d
    if-eqz v17, :cond_9

    .line 1193
    sget-object v22, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v22

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 1194
    .local v20, "useJapaneseOrder":Z
    if-eqz v20, :cond_f

    .line 1195
    const/16 v22, 0x7

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1196
    const-string/jumbo v22, "data10"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v16, v23

    .line 1197
    const-string/jumbo v22, "data9"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v16, v23

    .line 1198
    const-string/jumbo v22, "data8"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x2

    aput-object v22, v16, v23

    .line 1199
    const-string/jumbo v22, "data7"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x3

    aput-object v22, v16, v23

    .line 1200
    const-string/jumbo v22, "data6"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x4

    aput-object v22, v16, v23

    .line 1201
    const-string/jumbo v22, "data4"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x5

    aput-object v22, v16, v23

    .line 1202
    const-string/jumbo v22, "data5"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x6

    aput-object v22, v16, v23

    .line 1213
    .local v16, "structuredData":[Ljava/lang/String;
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1214
    .local v3, "builder":Ljava/lang/StringBuilder;
    const/16 v22, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    :goto_6
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_10

    aget-object v9, v16, v22

    .line 1215
    .local v9, "elem":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_e

    .line 1216
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    :cond_e
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 1204
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "elem":Ljava/lang/String;
    .end local v16    # "structuredData":[Ljava/lang/String;
    :cond_f
    const/16 v22, 0x7

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1205
    const-string/jumbo v22, "data5"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v16, v23

    .line 1206
    const-string/jumbo v22, "data4"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v16, v23

    .line 1207
    const-string/jumbo v22, "data6"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x2

    aput-object v22, v16, v23

    .line 1208
    const-string/jumbo v22, "data7"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x3

    aput-object v22, v16, v23

    .line 1209
    const-string/jumbo v22, "data8"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x4

    aput-object v22, v16, v23

    .line 1210
    const-string/jumbo v22, "data9"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x5

    aput-object v22, v16, v23

    .line 1211
    const-string/jumbo v22, "data10"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x6

    aput-object v22, v16, v23

    .line 1204
    .restart local v16    # "structuredData":[Ljava/lang/String;
    goto :goto_5

    .line 1219
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    :cond_10
    const-string/jumbo v22, "data1"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    const-string/jumbo v22, "data5"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1222
    const-string/jumbo v22, "data4"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1223
    const-string/jumbo v22, "data6"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1224
    const-string/jumbo v22, "data7"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1225
    const-string/jumbo v22, "data8"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1226
    const-string/jumbo v22, "data9"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1227
    const-string/jumbo v22, "data10"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1123
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v10    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v13    # "formattedAddress":Ljava/lang/String;
    .end local v15    # "oldType":Ljava/lang/Integer;
    .end local v16    # "structuredData":[Ljava/lang/String;
    .end local v20    # "useJapaneseOrder":Z
    .end local v21    # "values":Landroid/content/ContentValues;
    :cond_11
    return-void
.end method

.method public static migrateStateForNewContact(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/account/AccountType;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "newState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p3, "oldAccountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p4, "newAccountType"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    const/4 v8, 0x0

    .line 998
    if-ne p4, p3, :cond_3

    .line 1001
    invoke-virtual {p4}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "kind$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 1002
    .local v3, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-object v5, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 1004
    .local v5, "mimeType":Ljava/lang/String;
    const-string/jumbo v7, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1005
    invoke-static {p0, p1, p2, v3}, Lcom/android/contacts/common/model/RawContactModifier;->migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    goto :goto_0

    .line 1007
    :cond_1
    invoke-virtual {p1, v5}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1008
    .local v2, "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1009
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 1010
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v6

    .line 1011
    .local v6, "values":Landroid/content/ContentValues;
    if-eqz v6, :cond_2

    .line 1012
    invoke-static {v6}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_1

    .line 1021
    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v3    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v4    # "kind$iterator":Ljava/util/Iterator;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_3
    invoke-virtual {p4}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "kind$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 1022
    .restart local v3    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-boolean v7, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->editable:Z

    if-eqz v7, :cond_4

    .line 1023
    iget-object v5, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 1024
    .restart local v5    # "mimeType":Ljava/lang/String;
    const-string/jumbo v7, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1025
    invoke-static {p0, p1, p2, v3}, Lcom/android/contacts/common/model/RawContactModifier;->migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    goto :goto_2

    .line 1026
    :cond_5
    const-string/jumbo v7, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1027
    invoke-static {p1, p2, v3}, Lcom/android/contacts/common/model/RawContactModifier;->migratePostal(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    goto :goto_2

    .line 1028
    :cond_6
    const-string/jumbo v7, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1029
    invoke-static {p1, p2, v3, v8}, Lcom/android/contacts/common/model/RawContactModifier;->migrateEvent(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/Integer;)V

    goto :goto_2

    .line 1030
    :cond_7
    sget-object v7, Lcom/android/contacts/common/model/RawContactModifier;->sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1031
    invoke-static {p1, p2, v3}, Lcom/android/contacts/common/model/RawContactModifier;->migrateGenericWithoutTypeColumn(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    goto :goto_2

    .line 1032
    :cond_8
    sget-object v7, Lcom/android/contacts/common/model/RawContactModifier;->sGenericMimeTypesWithTypeSupport:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1033
    invoke-static {p1, p2, v3}, Lcom/android/contacts/common/model/RawContactModifier;->migrateGenericWithTypeColumn(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    goto :goto_2

    .line 1035
    :cond_9
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unexpected editable mime-type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 996
    .end local v3    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v5    # "mimeType":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method public static migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "newState"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p3, "newDataKind"    # Lcom/android/contacts/common/model/dataitem/DataKind;

    .prologue
    .line 1067
    const-string/jumbo v2, "vnd.android.cursor.item/name"

    .line 1066
    invoke-virtual {p1, v2}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v1

    .line 1068
    .local v1, "values":Landroid/content/ContentValues;
    if-nez v1, :cond_0

    .line 1069
    return-void

    .line 1072
    :cond_0
    invoke-virtual {p2}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isAdnAccount(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1073
    invoke-virtual {p2}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->migrateToSimContact(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1083
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 1064
    return-void

    .line 1074
    :cond_2
    invoke-virtual {p1}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isAdnAccount(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1079
    const-string/jumbo v2, "data2"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, "fullName":Ljava/lang/String;
    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/NameConverter;->displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    goto :goto_0
.end method

.method private static migrateToSimContact(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1095
    if-nez p1, :cond_0

    return-void

    .line 1097
    :cond_0
    invoke-static {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/NameConverter;->structuredNameToSimName(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v1

    .line 1099
    .local v1, "displayName":Ljava/lang/String;
    invoke-static {p0, v6, p2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getInstance(Landroid/content/Context;ZLjava/lang/String;)Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;

    move-result-object v0

    .line 1104
    .local v0, "adnHelper":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getPbrNumber(J)I

    move-result v3

    .line 1103
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getNameLength(I)I

    move-result v2

    .line 1106
    .local v2, "maxNameLength":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 1107
    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1110
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1111
    const-string/jumbo v3, "data2"

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    :goto_0
    const-string/jumbo v3, "data4"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1116
    const-string/jumbo v3, "data5"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1117
    const-string/jumbo v3, "data3"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1118
    const-string/jumbo v3, "data6"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1094
    return-void

    .line 1113
    :cond_2
    const-string/jumbo v3, "data2"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 9
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "typeExtra"    # Ljava/lang/String;
    .param p4, "valueExtra"    # Ljava/lang/String;
    .param p5, "valueColumn"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 935
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 938
    .local v7, "value":Ljava/lang/CharSequence;
    if-nez p1, :cond_0

    return-object v8

    .line 941
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/common/model/RawContactModifier;->canInsert(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v0

    .line 942
    .local v0, "canInsert":Z
    if-eqz v7, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 943
    :goto_0
    if-eqz v6, :cond_3

    if-eqz v0, :cond_3

    .line 946
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    .line 947
    .local v4, "hasType":Z
    if-eqz v4, :cond_4

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {p2, p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 949
    .local v5, "typeValue":I
    const/4 v8, 0x1

    invoke-static {p0, p1, v8, v5}, Lcom/android/contacts/common/model/RawContactModifier;->getBestValidType(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;ZI)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v3

    .line 952
    .local v3, "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    invoke-static {p0, p1, v3}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    .line 953
    .local v1, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, p5, v8}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    if-eqz v3, :cond_1

    iget-object v8, v3, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 957
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 958
    .local v2, "customType":Ljava/lang/String;
    iget-object v8, v3, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v1, v8, v2}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    .end local v2    # "customType":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 942
    .end local v1    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "editType":Lcom/android/contacts/common/model/account/AccountType$EditType;
    .end local v4    # "hasType":Z
    .end local v5    # "typeValue":I
    :cond_2
    const/4 v6, 0x0

    .local v6, "validValue":Z
    goto :goto_0

    .line 943
    .end local v6    # "validValue":Z
    :cond_3
    return-object v8

    .line 948
    .restart local v4    # "hasType":Z
    :cond_4
    const/high16 v8, -0x80000000

    goto :goto_1
.end method

.method public static parseExtras(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/RawContactDelta;Landroid/os/Bundle;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p2, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 508
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 510
    :cond_0
    return-void

    .line 513
    :cond_1
    invoke-static/range {p0 .. p3}, Lcom/android/contacts/common/model/RawContactModifier;->parseStructuredNameExtra(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/RawContactDelta;Landroid/os/Bundle;)V

    .line 514
    invoke-static/range {p1 .. p3}, Lcom/android/contacts/common/model/RawContactModifier;->parseStructuredPostalExtra(Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/RawContactDelta;Landroid/os/Bundle;)V

    .line 518
    const-string/jumbo v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v4

    .line 519
    .local v4, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const-string/jumbo v6, "phone_type"

    const-string/jumbo v7, "phone"

    const-string/jumbo v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 520
    const-string/jumbo v6, "secondary_phone_type"

    const-string/jumbo v7, "secondary_phone"

    .line 521
    const-string/jumbo v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    .line 520
    invoke-static/range {v3 .. v8}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 522
    const-string/jumbo v6, "tertiary_phone_type"

    const-string/jumbo v7, "tertiary_phone"

    .line 523
    const-string/jumbo v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    .line 522
    invoke-static/range {v3 .. v8}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 528
    const-string/jumbo v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v4

    .line 529
    const-string/jumbo v6, "email_type"

    const-string/jumbo v7, "email"

    const-string/jumbo v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 530
    const-string/jumbo v6, "secondary_email_type"

    const-string/jumbo v7, "secondary_email"

    .line 531
    const-string/jumbo v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    .line 530
    invoke-static/range {v3 .. v8}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 532
    const-string/jumbo v6, "tertiary_email_type"

    const-string/jumbo v7, "tertiary_email"

    .line 533
    const-string/jumbo v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    .line 532
    invoke-static/range {v3 .. v8}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 538
    const-string/jumbo v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v4

    .line 539
    invoke-static/range {p3 .. p3}, Lcom/android/contacts/common/model/RawContactModifier;->fixupLegacyImType(Landroid/os/Bundle;)V

    .line 540
    const-string/jumbo v6, "im_protocol"

    const-string/jumbo v7, "im_handle"

    const-string/jumbo v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 544
    const-string/jumbo v3, "company"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 545
    const-string/jumbo v3, "job_title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    .line 546
    :goto_0
    const-string/jumbo v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v14

    .line 547
    .local v14, "kindOrg":Lcom/android/contacts/common/model/dataitem/DataKind;
    if-eqz v12, :cond_3

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/contacts/common/model/RawContactModifier;->canInsert(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 548
    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v9

    .line 550
    .local v9, "child":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v3, "company"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 551
    .local v10, "company":Ljava/lang/String;
    invoke-static {v10}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 552
    const-string/jumbo v3, "data1"

    invoke-virtual {v9, v3, v10}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_2
    const-string/jumbo v3, "job_title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 556
    .local v16, "title":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 557
    const-string/jumbo v3, "data4"

    move-object/from16 v0, v16

    invoke-virtual {v9, v3, v0}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    .end local v9    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v10    # "company":Ljava/lang/String;
    .end local v16    # "title":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "notes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    .line 563
    .local v11, "hasNotes":Z
    const-string/jumbo v3, "vnd.android.cursor.item/note"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v13

    .line 564
    .local v13, "kindNotes":Lcom/android/contacts/common/model/dataitem/DataKind;
    if-eqz v11, :cond_4

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/contacts/common/model/RawContactModifier;->canInsert(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 565
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v9

    .line 567
    .restart local v9    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v3, "notes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 568
    .local v15, "notes":Ljava/lang/String;
    invoke-static {v15}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 569
    const-string/jumbo v3, "data1"

    invoke-virtual {v9, v3, v15}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    .end local v9    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v15    # "notes":Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 575
    .local v17, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v17, :cond_5

    .line 576
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->parseValues(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/util/ArrayList;)V

    .line 507
    :cond_5
    return-void

    .line 544
    .end local v11    # "hasNotes":Z
    .end local v13    # "kindNotes":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v14    # "kindOrg":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v17    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_6
    const/4 v12, 0x1

    .local v12, "hasOrg":Z
    goto/16 :goto_0
.end method

.method private static parseStructuredNameExtra(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/RawContactDelta;Landroid/os/Bundle;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p2, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 583
    const-string/jumbo v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 584
    const-string/jumbo v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v8

    .line 586
    .local v8, "child":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v2, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 587
    .local v13, "name":Ljava/lang/String;
    invoke-static {v13}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 588
    const-string/jumbo v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v12

    .line 589
    .local v12, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const/4 v15, 0x0

    .line 590
    .local v15, "supportsDisplayName":Z
    iget-object v2, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 591
    iget-object v2, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "field$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 592
    .local v10, "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    const-string/jumbo v2, "data1"

    iget-object v4, v10, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 593
    const/4 v15, 0x1

    .line 599
    .end local v10    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    .end local v11    # "field$iterator":Ljava/util/Iterator;
    :cond_1
    if-eqz v15, :cond_5

    .line 600
    const-string/jumbo v2, "data1"

    invoke-virtual {v8, v2, v13}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    .end local v12    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v15    # "supportsDisplayName":Z
    :cond_2
    :goto_0
    const-string/jumbo v2, "phonetic_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 631
    .local v14, "phoneticName":Ljava/lang/String;
    invoke-static {v14}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 632
    const-string/jumbo v2, "data7"

    invoke-virtual {v8, v2, v14}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isAdnAccount(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 640
    invoke-virtual {v8}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v2

    if-nez v2, :cond_7

    .line 641
    invoke-virtual {v8}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v16

    .line 645
    .local v16, "values":Landroid/content/ContentValues;
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->migrateToSimContact(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 581
    .end local v16    # "values":Landroid/content/ContentValues;
    :cond_4
    return-void

    .line 602
    .end local v14    # "phoneticName":Ljava/lang/String;
    .restart local v12    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .restart local v15    # "supportsDisplayName":Z
    :cond_5
    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 603
    const-string/jumbo v4, "complete_name"

    .line 602
    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 604
    const-string/jumbo v4, "data1"

    .line 602
    invoke-virtual {v2, v4, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 606
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 607
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    .line 608
    const-string/jumbo v5, "data4"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 609
    const-string/jumbo v5, "data2"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 610
    const-string/jumbo v5, "data5"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 611
    const-string/jumbo v5, "data3"

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 612
    const-string/jumbo v5, "data6"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 613
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 606
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 614
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 616
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 617
    const-string/jumbo v2, "data4"

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string/jumbo v2, "data2"

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string/jumbo v2, "data5"

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string/jumbo v2, "data3"

    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string/jumbo v2, "data6"

    const/4 v4, 0x4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 623
    :catchall_0
    move-exception v2

    .line 624
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 623
    throw v2

    .line 643
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v12    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v15    # "supportsDisplayName":Z
    .restart local v14    # "phoneticName":Ljava/lang/String;
    :cond_7
    invoke-virtual {v8}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v16

    .restart local v16    # "values":Landroid/content/ContentValues;
    goto/16 :goto_1
.end method

.method private static parseStructuredPostalExtra(Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/RawContactDelta;Landroid/os/Bundle;)V
    .locals 11
    .param p0, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p1, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 652
    const-string/jumbo v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v1

    .line 653
    .local v1, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const-string/jumbo v3, "postal_type"

    .line 654
    const-string/jumbo v4, "postal"

    const-string/jumbo v5, "data1"

    move-object v0, p1

    move-object v2, p2

    .line 653
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v7

    .line 655
    .local v7, "child":Lcom/android/contacts/common/model/ValuesDelta;
    if-eqz v7, :cond_2

    .line 656
    const-string/jumbo v0, "data1"

    invoke-virtual {v7, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 657
    .local v6, "address":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 658
    const/4 v10, 0x0

    .line 659
    .local v10, "supportsFormatted":Z
    iget-object v0, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "field$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/model/account/AccountType$EditField;

    .line 661
    .local v8, "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    const-string/jumbo v0, "data1"

    iget-object v2, v8, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    const/4 v10, 0x1

    .line 668
    .end local v8    # "field":Lcom/android/contacts/common/model/account/AccountType$EditField;
    .end local v9    # "field$iterator":Ljava/util/Iterator;
    :cond_1
    if-nez v10, :cond_2

    .line 669
    const-string/jumbo v0, "data4"

    invoke-virtual {v7, v0, v6}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string/jumbo v0, "data1"

    invoke-virtual {v7, v0}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 650
    .end local v6    # "address":Ljava/lang/String;
    .end local v10    # "supportsFormatted":Z
    :cond_2
    return-void
.end method

.method private static parseValues(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/util/ArrayList;)V
    .locals 13
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 679
    .local p2, "dataValueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "values$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 680
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v10, "mimetype"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 681
    .local v7, "mimeType":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 682
    sget-object v10, Lcom/android/contacts/common/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Mimetype is required. Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 687
    :cond_1
    const-string/jumbo v10, "vnd.android.cursor.item/name"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 691
    invoke-virtual {p1, v7}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    .line 692
    .local v6, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    if-nez v6, :cond_2

    .line 693
    sget-object v10, Lcom/android/contacts/common/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Mimetype not supported for account type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 694
    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountType;->getAccountTypeAndDataSet()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v12

    .line 693
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 694
    const-string/jumbo v12, ". Ignoring: "

    .line 693
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 698
    :cond_2
    iget-object v10, p1, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-static {v10}, Lcom/sonyericsson/android/socialphonebook/model/VerizonAccountType;->isVerizonAccountType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 699
    const-string/jumbo v10, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 698
    if-eqz v10, :cond_3

    .line 702
    invoke-static {v8}, Lcom/android/contacts/common/model/RawContactModifier;->prepareFullAddress(Landroid/content/ContentValues;)V

    .line 705
    :cond_3
    invoke-static {v8}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    .line 706
    .local v5, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-static {v5, v6}, Lcom/android/contacts/common/model/RawContactModifier;->isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 710
    invoke-virtual {p0, v7}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 712
    .local v4, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    iget v10, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    const-string/jumbo v10, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 714
    :cond_4
    const/4 v0, 0x1

    .line 715
    .local v0, "addEntry":Z
    const/4 v1, 0x0

    .line 716
    .local v1, "count":I
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 717
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "delta$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    .line 718
    .local v2, "delta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v10

    if-nez v10, :cond_5

    .line 719
    invoke-static {v2, v8, v6}, Lcom/android/contacts/common/model/RawContactModifier;->areEqual(Lcom/android/contacts/common/model/ValuesDelta;Landroid/content/ContentValues;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 720
    const/4 v0, 0x0

    .line 728
    .end local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "delta$iterator":Ljava/util/Iterator;
    :cond_6
    iget v10, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    iget v10, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    if-lt v1, v10, :cond_7

    .line 729
    sget-object v10, Lcom/android/contacts/common/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Mimetype allows at most "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 730
    const-string/jumbo v12, " entries. Ignoring: "

    .line 729
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const/4 v0, 0x0

    .line 734
    :cond_7
    if-eqz v0, :cond_8

    .line 735
    invoke-static {v5, v4, v6}, Lcom/android/contacts/common/model/RawContactModifier;->adjustType(Lcom/android/contacts/common/model/ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v0

    .line 738
    .end local v0    # "addEntry":Z
    :cond_8
    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {p0, v5}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto/16 :goto_0

    .line 723
    .restart local v0    # "addEntry":Z
    .restart local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v3    # "delta$iterator":Ljava/util/Iterator;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 743
    .end local v0    # "addEntry":Z
    .end local v1    # "count":I
    .end local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "delta$iterator":Ljava/util/Iterator;
    :cond_a
    const/4 v0, 0x1

    .line 744
    .restart local v0    # "addEntry":Z
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_d

    .line 745
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "delta$iterator":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    .line 746
    .restart local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-static {v2, v6}, Lcom/android/contacts/common/model/RawContactModifier;->isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 747
    const/4 v0, 0x0

    .line 751
    .end local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_c
    if-eqz v0, :cond_d

    .line 752
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    .line 753
    .restart local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    goto :goto_2

    .line 758
    .end local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "delta$iterator":Ljava/util/Iterator;
    :cond_d
    if-eqz v0, :cond_e

    .line 759
    invoke-static {v5, v4, v6}, Lcom/android/contacts/common/model/RawContactModifier;->adjustType(Lcom/android/contacts/common/model/ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v0

    .line 762
    .end local v0    # "addEntry":Z
    :cond_e
    if-eqz v0, :cond_f

    .line 763
    invoke-virtual {p0, v5}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto/16 :goto_0

    .line 764
    :cond_f
    const-string/jumbo v10, "vnd.android.cursor.item/note"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    if-eqz v4, :cond_11

    .line 767
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "delta$iterator":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    .line 768
    .restart local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-static {v2, v6}, Lcom/android/contacts/common/model/RawContactModifier;->isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 769
    const-string/jumbo v10, "data1"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "data1"

    invoke-virtual {v2, v12}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 770
    const-string/jumbo v12, "data1"

    invoke-virtual {v8, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 769
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 775
    .end local v2    # "delta":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v3    # "delta$iterator":Ljava/util/Iterator;
    :cond_11
    sget-object v10, Lcom/android/contacts/common/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Will not override mimetype "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ". Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 678
    .end local v4    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v5    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v6    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_12
    return-void
.end method

.method public static prepareFullAddress(Landroid/content/ContentValues;)V
    .locals 4
    .param p0, "values"    # Landroid/content/ContentValues;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 790
    const-string/jumbo v2, "data1"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 791
    .local v0, "addressPart":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 792
    return-void

    .line 794
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 795
    .local v1, "fullAddress":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "data5"

    invoke-static {p0, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->appendAddressPart(Landroid/content/ContentValues;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 796
    const-string/jumbo v2, "data4"

    invoke-static {p0, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->appendAddressPart(Landroid/content/ContentValues;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 797
    const-string/jumbo v2, "data6"

    invoke-static {p0, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->appendAddressPart(Landroid/content/ContentValues;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 798
    const-string/jumbo v2, "data7"

    invoke-static {p0, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->appendAddressPart(Landroid/content/ContentValues;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 799
    const-string/jumbo v2, "data8"

    invoke-static {p0, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->appendAddressPart(Landroid/content/ContentValues;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 800
    const-string/jumbo v2, "data9"

    invoke-static {p0, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->appendAddressPart(Landroid/content/ContentValues;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 801
    const-string/jumbo v2, "data10"

    invoke-static {p0, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->appendAddressPart(Landroid/content/ContentValues;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 803
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 804
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 806
    :cond_1
    const-string/jumbo v2, "data1"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    return-void
.end method

.method public static trimEmpty(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)V
    .locals 14
    .param p0, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    .line 405
    const/4 v3, 0x0

    .line 408
    .local v3, "hasValues":Z
    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "kind$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 409
    .local v7, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    iget-object v9, v7, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 410
    .local v9, "mimeType":Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 411
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v0, :cond_0

    .line 413
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    .line 415
    .local v1, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isUpdate()Z

    move-result v10

    .line 416
    :goto_1
    if-nez v10, :cond_3

    .line 417
    const/4 v3, 0x1

    .line 418
    goto :goto_0

    .line 415
    :cond_2
    const/4 v10, 0x1

    .local v10, "touched":Z
    goto :goto_1

    .line 422
    .end local v10    # "touched":Z
    :cond_3
    const-string/jumbo v11, "com.google"

    .line 423
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v12

    const-string/jumbo v13, "account_type"

    invoke-virtual {v12, v13}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 422
    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 424
    .local v4, "isGoogleAccount":Z
    const-string/jumbo v11, "vnd.android.cursor.item/photo"

    iget-object v12, v7, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    .line 425
    .local v6, "isPhoto":Z
    if-eqz v6, :cond_5

    move v5, v4

    .line 427
    :goto_2
    invoke-static {v1, v7}, Lcom/android/contacts/common/model/RawContactModifier;->isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v11

    if-eqz v11, :cond_4

    if-eqz v5, :cond_6

    .line 432
    :cond_4
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isFromTemplate()Z

    move-result v11

    if-nez v11, :cond_1

    .line 433
    const/4 v3, 0x1

    goto :goto_0

    .line 425
    :cond_5
    const/4 v5, 0x0

    .local v5, "isGooglePhoto":Z
    goto :goto_2

    .line 431
    .end local v5    # "isGooglePhoto":Z
    :cond_6
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    goto :goto_0

    .line 438
    .end local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v1    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "isGoogleAccount":Z
    .end local v6    # "isPhoto":Z
    .end local v7    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v9    # "mimeType":Ljava/lang/String;
    :cond_7
    if-nez v3, :cond_8

    .line 439
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->markDeleted()V

    .line 404
    :cond_8
    return-void
.end method

.method public static trimEmpty(Lcom/android/contacts/common/model/RawContactDeltaList;Lcom/android/contacts/common/model/AccountTypeManager;)V
    .locals 7
    .param p0, "set"    # Lcom/android/contacts/common/model/RawContactDeltaList;
    .param p1, "accountTypes"    # Lcom/android/contacts/common/model/AccountTypeManager;

    .prologue
    .line 372
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "state$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/RawContactDelta;

    .line 373
    .local v2, "state":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {v2}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    .line 374
    .local v5, "values":Lcom/android/contacts/common/model/ValuesDelta;
    const-string/jumbo v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "accountType":Ljava/lang/String;
    const-string/jumbo v6, "data_set"

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "dataSet":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v4

    .line 377
    .local v4, "type":Lcom/android/contacts/common/model/account/AccountType;
    invoke-static {v2, v4}, Lcom/android/contacts/common/model/RawContactModifier;->trimEmpty(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)V

    goto :goto_0

    .line 371
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "dataSet":Ljava/lang/String;
    .end local v2    # "state":Lcom/android/contacts/common/model/RawContactDelta;
    .end local v4    # "type":Lcom/android/contacts/common/model/account/AccountType;
    .end local v5    # "values":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_0
    return-void
.end method
