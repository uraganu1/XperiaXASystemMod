.class public Lcom/android/contacts/common/model/account/ExternalAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;
.source "ExternalAccountType.java"


# static fields
.field private static final METADATA_CONTACTS_NAMES:[Ljava/lang/String;


# instance fields
.field private mAccountTypeIconAttribute:Ljava/lang/String;

.field private mAccountTypeLabelAttribute:Ljava/lang/String;

.field private mCreateContactActivityClassName:Ljava/lang/String;

.field private mEditContactActivityClassName:Ljava/lang/String;

.field private mExtensionPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasContactsMetadata:Z

.field private mHasEditSchema:Z

.field private mInviteActionLabelAttribute:Ljava/lang/String;

.field private mInviteActionLabelResId:I

.field private mInviteContactActivity:Ljava/lang/String;

.field private final mIsExtension:Z

.field private mViewContactNotifyService:Ljava/lang/String;

.field private mViewGroupActivity:Ljava/lang/String;

.field private mViewGroupLabelAttribute:Ljava/lang/String;

.field private mViewGroupLabelResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 65
    const-string/jumbo v1, "android.provider.ALTERNATE_CONTACTS_STRUCTURE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 66
    const-string/jumbo v1, "android.provider.CONTACTS_STRUCTURE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 64
    sput-object v0, Lcom/android/contacts/common/model/account/ExternalAccountType;->METADATA_CONTACTS_NAMES:[Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;
    .param p3, "isExtension"    # Z

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/common/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/res/XmlResourceParser;)V

    .line 107
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/res/XmlResourceParser;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isExtension"    # Z
    .param p4, "injectedMetadata"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    .line 119
    iput-boolean p3, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mIsExtension:Z

    .line 120
    iput-object p2, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->resourcePackageName:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 124
    if-nez p4, :cond_2

    .line 125
    invoke-static {p1, p2}, Lcom/android/contacts/common/model/account/ExternalAccountType;->loadContactsXml(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 129
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :goto_0
    const/4 v2, 0x1

    .line 131
    .local v2, "needLineNumberInErrorLog":Z
    if-eqz v3, :cond_0

    .line 132
    :try_start_0
    invoke-virtual {p0, p1, v3}, Lcom/android/contacts/common/model/account/ExternalAccountType;->inflate(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 136
    :cond_0
    const/4 v2, 0x0

    .line 137
    iget-boolean v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mHasEditSchema:Z

    if-eqz v4, :cond_3

    .line 138
    const-string/jumbo v4, "vnd.android.cursor.item/name"

    invoke-direct {p0, v4}, Lcom/android/contacts/common/model/account/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V

    .line 139
    const-string/jumbo v4, "#displayName"

    invoke-direct {p0, v4}, Lcom/android/contacts/common/model/account/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V

    .line 140
    const-string/jumbo v4, "#phoneticName"

    invoke-direct {p0, v4}, Lcom/android/contacts/common/model/account/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V

    .line 141
    const-string/jumbo v4, "vnd.android.cursor.item/photo"

    invoke-direct {p0, v4}, Lcom/android/contacts/common/model/account/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :goto_1
    if-eqz v3, :cond_1

    .line 163
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 167
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mExtensionPackageNames:Ljava/util/List;

    .line 168
    iget-object v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mInviteActionLabelAttribute:Ljava/lang/String;

    .line 169
    iget-object v5, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string/jumbo v6, "inviteContactActionLabel"

    .line 168
    invoke-static {p1, v4, v5, v6}, Lcom/android/contacts/common/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mInviteActionLabelResId:I

    .line 170
    iget-object v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewGroupLabelAttribute:Ljava/lang/String;

    .line 171
    iget-object v5, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string/jumbo v6, "viewGroupActionLabel"

    .line 170
    invoke-static {p1, v4, v5, v6}, Lcom/android/contacts/common/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewGroupLabelResId:I

    .line 172
    iget-object v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mAccountTypeLabelAttribute:Ljava/lang/String;

    .line 173
    iget-object v5, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string/jumbo v6, "accountTypeLabel"

    .line 172
    invoke-static {p1, v4, v5, v6}, Lcom/android/contacts/common/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->titleRes:I

    .line 174
    iget-object v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mAccountTypeIconAttribute:Ljava/lang/String;

    .line 175
    iget-object v5, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string/jumbo v6, "accountTypeIcon"

    .line 174
    invoke-static {p1, v4, v5, v6}, Lcom/android/contacts/common/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->iconRes:I

    .line 178
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mIsInitialized:Z

    .line 118
    return-void

    .line 127
    .end local v2    # "needLineNumberInErrorLog":Z
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_2
    move-object v3, p4

    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_0

    .line 144
    .restart local v2    # "needLineNumberInErrorLog":Z
    :cond_3
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    :try_end_1
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v1, "error":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "Problem reading XML"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 153
    const-string/jumbo v4, " in line "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    :cond_4
    const-string/jumbo v4, " for external package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string/jumbo v4, "ExternalAccountType"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/mediatek/contacts/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    if-eqz v3, :cond_5

    .line 163
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 160
    :cond_5
    return-void

    .line 161
    .end local v0    # "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    .end local v1    # "error":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    .line 162
    if-eqz v3, :cond_6

    .line 163
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 161
    :cond_6
    throw v4
.end method

.method private checkKindExists(Ljava/lang/String;)V
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must be supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    return-void
.end method

.method public static hasContactsXml(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resPackageName"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-static {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->loadContactsXml(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadContactsXml(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 194
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v10, "android.content.SyncAdapter"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    const/16 v8, 0x84

    .line 195
    invoke-virtual {v4, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 198
    .local v1, "intentServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_2

    .line 199
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 200
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 201
    .local v7, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v7, :cond_0

    .line 204
    sget-object v10, Lcom/android/contacts/common/model/account/ExternalAccountType;->METADATA_CONTACTS_NAMES:[Ljava/lang/String;

    array-length v11, v10

    move v8, v9

    :goto_0
    if-ge v8, v11, :cond_0

    aget-object v2, v10, v8

    .line 205
    .local v2, "metadataName":Ljava/lang/String;
    invoke-virtual {v7, v4, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 207
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v3, :cond_1

    .line 209
    const-string/jumbo v8, "ExternalAccountType"

    const-string/jumbo v10, "Metadata loaded from: %s, %s, %s"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 210
    iget-object v12, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    aput-object v12, v11, v9

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v9, v11, v12

    .line 211
    const/4 v9, 0x2

    aput-object v2, v11, v9

    .line 209
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-object v3

    .line 204
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 220
    .end local v2    # "metadataName":Ljava/lang/String;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "resolveInfo$iterator":Ljava/util/Iterator;
    .end local v7    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_2
    return-object v12
.end method

.method static resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "xmlAttributeName"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 421
    const-string/jumbo v4, "ExternalAccountType"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[resolveExternalResId]resourceName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 422
    const-string/jumbo v6, ",packageName = "

    .line 421
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 422
    const-string/jumbo v6, ",xmlAttributeName = "

    .line 421
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 425
    return v7

    .line 427
    :cond_0
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x40

    if-eq v4, v5, :cond_1

    .line 428
    const-string/jumbo v4, "ExternalAccountType"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " must be a resource name beginnig with \'@\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return v7

    .line 431
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 439
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 440
    .local v3, "resId":I
    if-nez v3, :cond_2

    .line 441
    const-string/jumbo v4, "ExternalAccountType"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to load "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    return v7

    .line 435
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "resId":I
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "ExternalAccountType"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to load package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return v7

    .line 444
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "resId":I
    :cond_2
    return v3
.end method


# virtual methods
.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mHasEditSchema:Z

    return v0
.end method

.method public getExtensionPackageNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mExtensionPackageNames:Ljava/util/List;

    return-object v0
.end method

.method public getInviteContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mInviteContactActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getViewContactNotifyServiceClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewContactNotifyService:Ljava/lang/String;

    return-object v0
.end method

.method public hasContactsMetadata()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mHasContactsMetadata:Z

    return v0
.end method

.method protected inflate(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 307
    .local v6, "attrs":Landroid/util/AttributeSet;
    :cond_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .local v16, "type":I
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 308
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 312
    :cond_1
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 313
    new-instance v18, Ljava/lang/IllegalStateException;

    const-string/jumbo v19, "No start tag found"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 400
    .end local v16    # "type":I
    :catch_0
    move-exception v9

    .line 401
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v18, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    const-string/jumbo v19, "Problem reading XML"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v9}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v18

    .line 316
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v16    # "type":I
    :cond_2
    :try_start_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 317
    .local v12, "rootTag":Ljava/lang/String;
    const-string/jumbo v18, "ContactsAccountType"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 318
    const-string/jumbo v18, "ContactsSource"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 323
    :cond_3
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mHasContactsMetadata:Z

    .line 325
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    .line 326
    .local v5, "attributeCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v5, :cond_11

    .line 327
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, "attr":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 330
    .local v17, "value":Ljava/lang/String;
    const-string/jumbo v18, "ExternalAccountType"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string/jumbo v18, "editContactActivity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 333
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mEditContactActivityClassName:Ljava/lang/String;

    .line 326
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 319
    .end local v4    # "attr":Ljava/lang/String;
    .end local v5    # "attributeCount":I
    .end local v10    # "i":I
    .end local v17    # "value":Ljava/lang/String;
    :cond_4
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Top level element must be ContactsAccountType, not "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 402
    .end local v12    # "rootTag":Ljava/lang/String;
    .end local v16    # "type":I
    :catch_1
    move-exception v8

    .line 403
    .local v8, "e":Ljava/io/IOException;
    new-instance v18, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    const-string/jumbo v19, "Problem reading XML"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v8}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v18

    .line 334
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v4    # "attr":Ljava/lang/String;
    .restart local v5    # "attributeCount":I
    .restart local v10    # "i":I
    .restart local v12    # "rootTag":Ljava/lang/String;
    .restart local v16    # "type":I
    .restart local v17    # "value":Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string/jumbo v18, "createContactActivity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 335
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mCreateContactActivityClassName:Ljava/lang/String;

    goto :goto_1

    .line 336
    :cond_6
    const-string/jumbo v18, "inviteContactActivity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 337
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mInviteContactActivity:Ljava/lang/String;

    goto :goto_1

    .line 338
    :cond_7
    const-string/jumbo v18, "inviteContactActionLabel"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 339
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mInviteActionLabelAttribute:Ljava/lang/String;

    goto :goto_1

    .line 340
    :cond_8
    const-string/jumbo v18, "viewContactNotifyService"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 341
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewContactNotifyService:Ljava/lang/String;

    goto :goto_1

    .line 342
    :cond_9
    const-string/jumbo v18, "viewGroupActivity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 343
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewGroupActivity:Ljava/lang/String;

    goto/16 :goto_1

    .line 344
    :cond_a
    const-string/jumbo v18, "viewGroupActionLabel"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 345
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewGroupLabelAttribute:Ljava/lang/String;

    goto/16 :goto_1

    .line 346
    :cond_b
    const-string/jumbo v18, "dataSet"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 347
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->dataSet:Ljava/lang/String;

    goto/16 :goto_1

    .line 348
    :cond_c
    const-string/jumbo v18, "extensionPackageNames"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mExtensionPackageNames:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 350
    :cond_d
    const-string/jumbo v18, "accountType"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 351
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->accountType:Ljava/lang/String;

    goto/16 :goto_1

    .line 352
    :cond_e
    const-string/jumbo v18, "accountTypeLabel"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 353
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mAccountTypeLabelAttribute:Ljava/lang/String;

    goto/16 :goto_1

    .line 354
    :cond_f
    const-string/jumbo v18, "accountTypeIcon"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 355
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mAccountTypeIconAttribute:Ljava/lang/String;

    goto/16 :goto_1

    .line 357
    :cond_10
    const-string/jumbo v18, "ExternalAccountType"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Unsupported attribute "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/contacts/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 362
    .end local v4    # "attr":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :cond_11
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    .line 363
    .local v13, "startDepth":I
    :cond_12
    :goto_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 364
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v13, :cond_17

    .line 365
    :cond_13
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_17

    .line 367
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    add-int/lit8 v19, v13, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 371
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 372
    .local v15, "tag":Ljava/lang/String;
    const-string/jumbo v18, "EditSchema"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 373
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mHasEditSchema:Z

    .line 374
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/contacts/common/model/account/ExternalAccountType;->parseEditSchema(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    goto :goto_2

    .line 375
    :cond_14
    const-string/jumbo v18, "ContactsDataKind"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 377
    sget-object v18, Lcom/android/contacts/common/R$styleable;->ContactsDataKind:[I

    .line 376
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 378
    .local v3, "a":Landroid/content/res/TypedArray;
    new-instance v11, Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-direct {v11}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>()V

    .line 381
    .local v11, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const/16 v18, 0x1

    .line 380
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 383
    const/16 v18, 0x2

    .line 382
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 384
    .local v14, "summaryColumn":Ljava/lang/String;
    if-eqz v14, :cond_15

    .line 386
    new-instance v18, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 389
    :cond_15
    const/16 v18, 0x3

    .line 388
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 390
    .local v7, "detailColumn":Ljava/lang/String;
    if-eqz v7, :cond_16

    .line 392
    new-instance v18, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 395
    :cond_16
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 397
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/contacts/common/model/account/ExternalAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 302
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "detailColumn":Ljava/lang/String;
    .end local v11    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v14    # "summaryColumn":Ljava/lang/String;
    .end local v15    # "tag":Ljava/lang/String;
    :cond_17
    return-void
.end method

.method public isEmbedded()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method
