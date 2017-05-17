.class public Lcom/android/contacts/common/model/account/ExternalAccountType;
.super Lcom/android/contacts/common/model/account/BaseAccountType;
.source "ExternalAccountType.java"


# static fields
.field private static final ATTR_ACCOUNT_ICON:Ljava/lang/String; = "accountTypeIcon"

.field private static final ATTR_ACCOUNT_LABEL:Ljava/lang/String; = "accountTypeLabel"

.field private static final ATTR_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field private static final ATTR_CREATE_CONTACT_ACTIVITY:Ljava/lang/String; = "createContactActivity"

.field private static final ATTR_DATA_SET:Ljava/lang/String; = "dataSet"

.field private static final ATTR_EDIT_CONTACT_ACTIVITY:Ljava/lang/String; = "editContactActivity"

.field private static final ATTR_EXTENSION_PACKAGE_NAMES:Ljava/lang/String; = "extensionPackageNames"

.field private static final ATTR_INVITE_CONTACT_ACTION_LABEL:Ljava/lang/String; = "inviteContactActionLabel"

.field private static final ATTR_INVITE_CONTACT_ACTIVITY:Ljava/lang/String; = "inviteContactActivity"

.field private static final ATTR_VIEW_CONTACT_NOTIFY_SERVICE:Ljava/lang/String; = "viewContactNotifyService"

.field private static final ATTR_VIEW_GROUP_ACTION_LABEL:Ljava/lang/String; = "viewGroupActionLabel"

.field private static final ATTR_VIEW_GROUP_ACTIVITY:Ljava/lang/String; = "viewGroupActivity"

.field private static final ATTR_VIEW_STREAM_ITEM_ACTIVITY:Ljava/lang/String; = "viewStreamItemActivity"

.field private static final ATTR_VIEW_STREAM_ITEM_PHOTO_ACTIVITY:Ljava/lang/String; = "viewStreamItemPhotoActivity"

.field private static final METADATA_CONTACTS_NAMES:[Ljava/lang/String;

.field private static final SYNC_META_DATA:Ljava/lang/String; = "android.content.SyncAdapter"

.field private static final TAG:Ljava/lang/String; = "ExternalAccountType"

.field private static final TAG_CONTACTS_ACCOUNT_TYPE:Ljava/lang/String; = "ContactsAccountType"

.field private static final TAG_CONTACTS_DATA_KIND:Ljava/lang/String; = "ContactsDataKind"

.field private static final TAG_CONTACTS_SOURCE_LEGACY:Ljava/lang/String; = "ContactsSource"

.field private static final TAG_EDIT_SCHEMA:Ljava/lang/String; = "EditSchema"


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

.field private mViewStreamItemActivity:Ljava/lang/String;

.field private mViewStreamItemPhotoActivity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 67
    const-string/jumbo v1, "android.provider.ALTERNATE_CONTACTS_STRUCTURE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 68
    const-string/jumbo v1, "android.provider.CONTACTS_STRUCTURE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 66
    sput-object v0, Lcom/android/contacts/common/model/account/ExternalAccountType;->METADATA_CONTACTS_NAMES:[Ljava/lang/String;

    .line 54
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "contactsXmlPackageName"    # Ljava/lang/String;
    .param p4, "isExtension"    # Z

    .prologue
    .line 125
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/res/XmlResourceParser;)V

    .line 123
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/res/XmlResourceParser;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "contactsXmlPackageName"    # Ljava/lang/String;
    .param p4, "isExtension"    # Z
    .param p5, "injectedMetadata"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/contacts/common/model/account/BaseAccountType;-><init>()V

    .line 137
    iput-boolean p4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mIsExtension:Z

    .line 138
    iput-object p2, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->resourcePackageName:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 140
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mExtensionPackageNames:Ljava/util/List;

    .line 143
    if-nez p5, :cond_2

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/model/account/ExternalAccountType;->loadContactsXml(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 148
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :goto_0
    const/4 v2, 0x1

    .line 150
    .local v2, "needLineNumberInErrorLog":Z
    if-eqz v3, :cond_0

    .line 151
    :try_start_0
    invoke-virtual {p0, p1, v3}, Lcom/android/contacts/common/model/account/ExternalAccountType;->inflate(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 155
    :cond_0
    const/4 v2, 0x0

    .line 156
    iget-boolean v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mHasEditSchema:Z

    if-eqz v4, :cond_3

    .line 157
    const-string/jumbo v4, "vnd.android.cursor.item/name"

    invoke-direct {p0, v4}, Lcom/android/contacts/common/model/account/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V

    .line 158
    const-string/jumbo v4, "vnd.android.cursor.item/photo"

    invoke-direct {p0, v4}, Lcom/android/contacts/common/model/account/ExternalAccountType;->checkKindExists(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :goto_1
    if-eqz v3, :cond_1

    .line 178
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 182
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mInviteActionLabelAttribute:Ljava/lang/String;

    .line 183
    iget-object v5, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string/jumbo v6, "inviteContactActionLabel"

    .line 182
    invoke-static {p1, v4, v5, v6}, Lcom/android/contacts/common/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mInviteActionLabelResId:I

    .line 184
    iget-object v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewGroupLabelAttribute:Ljava/lang/String;

    .line 185
    iget-object v5, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string/jumbo v6, "viewGroupActionLabel"

    .line 184
    invoke-static {p1, v4, v5, v6}, Lcom/android/contacts/common/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewGroupLabelResId:I

    .line 186
    iget-object v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mAccountTypeLabelAttribute:Ljava/lang/String;

    .line 187
    iget-object v5, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string/jumbo v6, "accountTypeLabel"

    .line 186
    invoke-static {p1, v4, v5, v6}, Lcom/android/contacts/common/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->titleRes:I

    .line 188
    iget-object v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mAccountTypeIconAttribute:Ljava/lang/String;

    .line 189
    iget-object v5, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->syncAdapterPackageName:Ljava/lang/String;

    const-string/jumbo v6, "accountTypeIcon"

    .line 188
    invoke-static {p1, v4, v5, v6}, Lcom/android/contacts/common/model/account/ExternalAccountType;->resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->iconRes:I

    .line 192
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mIsInitialized:Z

    .line 135
    return-void

    .line 146
    .end local v2    # "needLineNumberInErrorLog":Z
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_2
    move-object v3, p5

    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_0

    .line 161
    .restart local v2    # "needLineNumberInErrorLog":Z
    :cond_3
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/common/model/dataitem/DataKind;
    :try_end_1
    .catch Lcom/android/contacts/common/model/account/AccountType$DefinitionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v1, "error":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "Problem reading XML"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 168
    const-string/jumbo v4, " in line "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    :cond_4
    const-string/jumbo v4, " for external package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string/jumbo v4, "ExternalAccountType"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    if-eqz v3, :cond_5

    .line 178
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 175
    :cond_5
    return-void

    .line 176
    .end local v0    # "e":Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
    .end local v1    # "error":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    .line 177
    if-eqz v3, :cond_6

    .line 178
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 176
    :cond_6
    throw v4
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isExtension"    # Z

    .prologue
    .line 115
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/res/XmlResourceParser;)V

    .line 114
    return-void
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
    .line 241
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/account/ExternalAccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    if-nez v0, :cond_0

    .line 242
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

    .line 240
    :cond_0
    return-void
.end method

.method private loadContactsXml(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resPackageName"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 211
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "android.content.SyncAdapter"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const/16 v8, 0x84

    .line 212
    invoke-virtual {v4, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 215
    .local v1, "intentServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_3

    .line 216
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 217
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 218
    .local v7, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v7, :cond_0

    .line 221
    sget-object v9, Lcom/android/contacts/common/model/account/ExternalAccountType;->METADATA_CONTACTS_NAMES:[Ljava/lang/String;

    const/4 v8, 0x0

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v2, v9, v8

    .line 222
    .local v2, "metadataName":Ljava/lang/String;
    invoke-virtual {v7, v4, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 224
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v3, :cond_2

    .line 225
    const-string/jumbo v8, "ExternalAccountType"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 226
    const-string/jumbo v8, "ExternalAccountType"

    const-string/jumbo v9, "Metadata loaded from: %s, %s, %s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    .line 227
    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 228
    const/4 v11, 0x2

    aput-object v2, v10, v11

    .line 226
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_1
    return-object v3

    .line 221
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 237
    .end local v2    # "metadataName":Ljava/lang/String;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "resolveInfo$iterator":Ljava/util/Iterator;
    .end local v7    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_3
    const/4 v8, 0x0

    return-object v8
.end method

.method static resolveExternalResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "xmlAttributeName"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 449
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 450
    return v7

    .line 452
    :cond_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x40

    if-eq v4, v5, :cond_1

    .line 453
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

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return v7

    .line 456
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 464
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 465
    .local v3, "resId":I
    if-nez v3, :cond_2

    .line 466
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

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return v7

    .line 460
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "resId":I
    :catch_0
    move-exception v0

    .line 461
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

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return v7

    .line 469
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
    .line 258
    iget-boolean v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mHasEditSchema:Z

    return v0
.end method

.method public getCreateContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mCreateContactActivityClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getEditContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mEditContactActivityClassName:Ljava/lang/String;

    return-object v0
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
    .line 315
    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mExtensionPackageNames:Ljava/util/List;

    return-object v0
.end method

.method protected getInviteContactActionResId()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mInviteActionLabelResId:I

    return v0
.end method

.method public getInviteContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mInviteContactActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getViewContactNotifyServiceClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewContactNotifyService:Ljava/lang/String;

    return-object v0
.end method

.method public getViewGroupActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewGroupActivity:Ljava/lang/String;

    return-object v0
.end method

.method protected getViewGroupLabelResId()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewGroupLabelResId:I

    return v0
.end method

.method public getViewStreamItemActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewStreamItemActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getViewStreamItemPhotoActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewStreamItemPhotoActivity:Ljava/lang/String;

    return-object v0
.end method

.method public hasContactsMetadata()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mHasContactsMetadata:Z

    return v0
.end method

.method protected inflate(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 327
    .local v6, "attrs":Landroid/util/AttributeSet;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    .line 328
    .local v17, "type":I
    :goto_0
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 329
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    goto :goto_0

    .line 333
    :cond_0
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 334
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string/jumbo v20, "No start tag found"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 428
    .end local v17    # "type":I
    :catch_0
    move-exception v10

    .line 429
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v19, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    const-string/jumbo v20, "Problem reading XML"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v10}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v19

    .line 337
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v17    # "type":I
    :cond_1
    :try_start_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 338
    .local v13, "rootTag":Ljava/lang/String;
    const-string/jumbo v19, "ContactsAccountType"

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 339
    const-string/jumbo v19, "ContactsSource"

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 344
    :cond_2
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mHasContactsMetadata:Z

    .line 346
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    .line 347
    .local v5, "attributeCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v5, :cond_13

    .line 348
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 349
    .local v4, "attr":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v18

    .line 350
    .local v18, "value":Ljava/lang/String;
    const-string/jumbo v19, "ExternalAccountType"

    const/16 v20, 0x3

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 351
    const-string/jumbo v19, "ExternalAccountType"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_3
    const-string/jumbo v19, "editContactActivity"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 354
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mEditContactActivityClassName:Ljava/lang/String;

    .line 347
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 340
    .end local v4    # "attr":Ljava/lang/String;
    .end local v5    # "attributeCount":I
    .end local v11    # "i":I
    .end local v18    # "value":Ljava/lang/String;
    :cond_4
    new-instance v19, Ljava/lang/IllegalStateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Top level element must be ContactsAccountType, not "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 430
    .end local v13    # "rootTag":Ljava/lang/String;
    .end local v17    # "type":I
    :catch_1
    move-exception v9

    .line 431
    .local v9, "e":Ljava/io/IOException;
    new-instance v19, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;

    const-string/jumbo v20, "Problem reading XML"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v9}, Lcom/android/contacts/common/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v19

    .line 355
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v4    # "attr":Ljava/lang/String;
    .restart local v5    # "attributeCount":I
    .restart local v11    # "i":I
    .restart local v13    # "rootTag":Ljava/lang/String;
    .restart local v17    # "type":I
    .restart local v18    # "value":Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string/jumbo v19, "createContactActivity"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 356
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mCreateContactActivityClassName:Ljava/lang/String;

    goto :goto_2

    .line 357
    :cond_6
    const-string/jumbo v19, "inviteContactActivity"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 358
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mInviteContactActivity:Ljava/lang/String;

    goto :goto_2

    .line 359
    :cond_7
    const-string/jumbo v19, "inviteContactActionLabel"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 360
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mInviteActionLabelAttribute:Ljava/lang/String;

    goto :goto_2

    .line 361
    :cond_8
    const-string/jumbo v19, "viewContactNotifyService"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 362
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewContactNotifyService:Ljava/lang/String;

    goto :goto_2

    .line 363
    :cond_9
    const-string/jumbo v19, "viewGroupActivity"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 364
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewGroupActivity:Ljava/lang/String;

    goto/16 :goto_2

    .line 365
    :cond_a
    const-string/jumbo v19, "viewGroupActionLabel"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 366
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewGroupLabelAttribute:Ljava/lang/String;

    goto/16 :goto_2

    .line 367
    :cond_b
    const-string/jumbo v19, "viewStreamItemActivity"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 368
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewStreamItemActivity:Ljava/lang/String;

    goto/16 :goto_2

    .line 369
    :cond_c
    const-string/jumbo v19, "viewStreamItemPhotoActivity"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 370
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mViewStreamItemPhotoActivity:Ljava/lang/String;

    goto/16 :goto_2

    .line 371
    :cond_d
    const-string/jumbo v19, "dataSet"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 372
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->dataSet:Ljava/lang/String;

    goto/16 :goto_2

    .line 373
    :cond_e
    const-string/jumbo v19, "extensionPackageNames"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mExtensionPackageNames:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 375
    :cond_f
    const-string/jumbo v19, "accountType"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 376
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->accountType:Ljava/lang/String;

    goto/16 :goto_2

    .line 377
    :cond_10
    const-string/jumbo v19, "accountTypeLabel"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 378
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mAccountTypeLabelAttribute:Ljava/lang/String;

    goto/16 :goto_2

    .line 379
    :cond_11
    const-string/jumbo v19, "accountTypeIcon"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 380
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mAccountTypeIconAttribute:Ljava/lang/String;

    goto/16 :goto_2

    .line 382
    :cond_12
    const-string/jumbo v19, "ExternalAccountType"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Unsupported attribute "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 387
    .end local v4    # "attr":Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    :cond_13
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    .line 388
    .local v14, "startDepth":I
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    .line 389
    :goto_3
    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    move/from16 v0, v19

    if-le v0, v14, :cond_1b

    .line 390
    :cond_14
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1b

    .line 392
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    add-int/lit8 v20, v14, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_16

    .line 391
    :cond_15
    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    goto :goto_3

    .line 396
    :cond_16
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 397
    .local v16, "tag":Ljava/lang/String;
    const-string/jumbo v19, "EditSchema"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 398
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/common/model/account/ExternalAccountType;->mHasEditSchema:Z

    .line 399
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/contacts/common/model/account/ExternalAccountType;->parseEditSchema(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 400
    :cond_17
    const-string/jumbo v19, "ContactsDataKind"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 401
    new-instance v12, Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-direct {v12}, Lcom/android/contacts/common/model/dataitem/DataKind;-><init>()V

    .line 403
    .local v12, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    const v19, 0x1010002

    const v20, 0x1010026

    .line 404
    const v21, 0x10102a2

    const v22, 0x10102a3

    .line 405
    const v23, 0x10102a4

    .line 402
    filled-new-array/range {v19 .. v23}, [I

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 407
    .local v3, "a":Landroid/content/res/TypedArray;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 408
    const/16 v19, 0x0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    move/from16 v0, v19

    iput v0, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->iconAltRes:I

    .line 409
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 410
    .local v15, "summaryColumn":Ljava/lang/String;
    if-eqz v15, :cond_18

    .line 412
    new-instance v19, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 414
    :cond_18
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 415
    .local v7, "detailColumn":Ljava/lang/String;
    const/16 v19, 0x4

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 416
    .local v8, "detailSocialSummary":Z
    if-eqz v8, :cond_19

    .line 418
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBodySocial:Z

    .line 420
    :cond_19
    if-eqz v7, :cond_1a

    .line 422
    new-instance v19, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 424
    :cond_1a
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 425
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/model/account/ExternalAccountType;->addKind(Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/dataitem/DataKind;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 322
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "detailColumn":Ljava/lang/String;
    .end local v8    # "detailSocialSummary":Z
    .end local v12    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    .end local v15    # "summaryColumn":Ljava/lang/String;
    .end local v16    # "tag":Ljava/lang/String;
    :cond_1b
    return-void
.end method

.method public isEmbedded()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public isExtension()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/android/contacts/common/model/account/ExternalAccountType;->mIsExtension:Z

    return v0
.end method
