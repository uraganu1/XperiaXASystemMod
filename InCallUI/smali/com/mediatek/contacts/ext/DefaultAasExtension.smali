.class public Lcom/mediatek/contacts/ext/DefaultAasExtension;
.super Ljava/lang/Object;
.source "DefaultAasExtension.java"

# interfaces
.implements Lcom/mediatek/contacts/ext/IAasExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAasEntry(Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public cursorColumnToBuilder(Landroid/database/Cursor;Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 1
    .param p1, "srcCursor"    # Landroid/database/Cursor;
    .param p2, "destBuilder"    # Landroid/content/ContentProviderOperation$Builder;
    .param p3, "srcAccountType"    # Ljava/lang/String;
    .param p4, "srcMimeType"    # Ljava/lang/String;
    .param p5, "destSubId"    # I
    .param p6, "indexOfColumn"    # I

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public ensurePhoneKindForCompactEditor(Lcom/android/contacts/common/model/RawContactDeltaList;ILandroid/content/Context;)V
    .locals 0
    .param p1, "state"    # Lcom/android/contacts/common/model/RawContactDeltaList;
    .param p2, "subId"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 406
    return-void
.end method

.method public ensurePhoneKindForEditor(Lcom/android/contacts/common/model/account/AccountType;ILcom/android/contacts/common/model/RawContactDelta;)Z
    .locals 1
    .param p1, "type"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p2, "subId"    # I
    .param p3, "entity"    # Lcom/android/contacts/common/model/RawContactDelta;

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentType(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;I)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 1
    .param p1, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p2, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p3, "rawValue"    # I

    .prologue
    .line 204
    invoke-static {p2, p3}, Lcom/android/contacts/common/model/RawContactModifier;->getType(Lcom/android/contacts/common/model/dataitem/DataKind;I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    return-object v0
.end method

.method public getCustomTypeLabel(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I
    .param p2, "customColumn"    # Ljava/lang/String;

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLabelForBindData(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "type"    # I
    .param p3, "customLabel"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "cursor"    # Landroid/database/Cursor;
    .param p6, "defaultValue"    # Ljava/lang/CharSequence;

    .prologue
    .line 356
    return-object p6
.end method

.method public getMaxEmptyEditors(Lcom/android/contacts/common/model/RawContactDelta;Ljava/lang/String;)I
    .locals 1
    .param p1, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public getSubheaderString(II)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "type"    # I

    .prologue
    .line 391
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeLabel(ILjava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "defvalue"    # Ljava/lang/String;
    .param p4, "subId"    # I

    .prologue
    .line 377
    return-object p3
.end method

.method public handleLabel(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;)Z
    .locals 1
    .param p1, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p3, "state"    # Lcom/android/contacts/common/model/RawContactDelta;

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public onTypeSelectionChange(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/widget/ArrayAdapter;Lcom/android/contacts/common/model/account/AccountType$EditType;Lcom/android/contacts/common/model/account/AccountType$EditType;)Z
    .locals 1
    .param p1, "rawContact"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p3, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p5, "select"    # Lcom/android/contacts/common/model/account/AccountType$EditType;
    .param p6, "type"    # Lcom/android/contacts/common/model/account/AccountType$EditType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType$EditType;",
            ">;",
            "Lcom/android/contacts/common/model/account/AccountType$EditType;",
            "Lcom/android/contacts/common/model/account/AccountType$EditType;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 185
    .local p4, "editTypeAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/contacts/common/model/account/AccountType$EditType;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public rebuildFromState(Lcom/android/contacts/common/model/RawContactDelta;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public rebuildLabelSelection(Lcom/android/contacts/common/model/RawContactDelta;Landroid/widget/Spinner;Landroid/widget/ArrayAdapter;Lcom/android/contacts/common/model/account/AccountType$EditType;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 1
    .param p1, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "label"    # Landroid/widget/Spinner;
    .param p4, "item"    # Lcom/android/contacts/common/model/account/AccountType$EditType;
    .param p5, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            "Landroid/widget/Spinner;",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType$EditType;",
            ">;",
            "Lcom/android/contacts/common/model/account/AccountType$EditType;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 159
    .local p3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/contacts/common/model/account/AccountType$EditType;>;"
    invoke-virtual {p3, p4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public setCurrentSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    .line 36
    return-void
.end method

.method public shouldStopSave(Z)Z
    .locals 1
    .param p1, "isSimContact"    # Z

    .prologue
    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public updateAdditionalNumberToDB(Landroid/content/Intent;J)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "rawContactId"    # J

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public updateOperation(Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;Landroid/database/Cursor;I)V
    .locals 0
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "builder"    # Landroid/content/ContentProviderOperation$Builder;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "type"    # I

    .prologue
    .line 222
    return-void
.end method

.method public updateOperationList(Landroid/accounts/Account;Ljava/util/ArrayList;I)Z
    .locals 1
    .param p1, "accounType"    # Landroid/accounts/Account;
    .param p3, "backRef"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 330
    .local p2, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public updateValues(Landroid/content/Intent;ILandroid/content/ContentValues;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "subId"    # I
    .param p3, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public updateValuesforCopy(Landroid/net/Uri;ILjava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "subId"    # I
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "simContentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 241
    return-void
.end method

.method public updateView(Lcom/android/contacts/common/model/RawContactDelta;Landroid/view/View;Lcom/android/contacts/common/model/ValuesDelta;I)Z
    .locals 1
    .param p1, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p4, "action"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method
