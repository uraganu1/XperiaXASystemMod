.class public interface abstract Lcom/mediatek/contacts/ext/IAasExtension;
.super Ljava/lang/Object;
.source "IAasExtension.java"


# static fields
.field public static final SIM_ID_DONT_KNOW_CURR:I = 0xa

.field public static final STRING_ADDITINAL:C = '\u0001'

.field public static final STRING_PRIMART:C = '\u0000'

.field public static final TYPE_FOR_ADDITIONAL_NUMBER:I = 0x1

.field public static final TYPE_FOR_PHONE_NUMBER:I = 0x0

.field public static final VIEW_UPDATE_DELETE_EDITOR:I = 0x3

.field public static final VIEW_UPDATE_HINT:I = 0x1

.field public static final VIEW_UPDATE_LABEL:I = 0x4

.field public static final VIEW_UPDATE_NONE:I = 0x0

.field public static final VIEW_UPDATE_VISIBILITY:I = 0x2


# virtual methods
.method public abstract checkAasEntry(Landroid/content/ContentValues;)Z
.end method

.method public abstract cursorColumnToBuilder(Landroid/database/Cursor;Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/lang/String;II)Z
.end method

.method public abstract ensurePhoneKindForCompactEditor(Lcom/android/contacts/common/model/RawContactDeltaList;ILandroid/content/Context;)V
.end method

.method public abstract ensurePhoneKindForEditor(Lcom/android/contacts/common/model/account/AccountType;ILcom/android/contacts/common/model/RawContactDelta;)Z
.end method

.method public abstract getCurrentType(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;I)Lcom/android/contacts/common/model/account/AccountType$EditType;
.end method

.method public abstract getCustomTypeLabel(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLabelForBindData(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.end method

.method public abstract getMaxEmptyEditors(Lcom/android/contacts/common/model/RawContactDelta;Ljava/lang/String;)I
.end method

.method public abstract getSubheaderString(II)Ljava/lang/String;
.end method

.method public abstract getTypeLabel(ILjava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;
.end method

.method public abstract handleLabel(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/RawContactDelta;)Z
.end method

.method public abstract onTypeSelectionChange(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/widget/ArrayAdapter;Lcom/android/contacts/common/model/account/AccountType$EditType;Lcom/android/contacts/common/model/account/AccountType$EditType;)Z
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
.end method

.method public abstract rebuildFromState(Lcom/android/contacts/common/model/RawContactDelta;Ljava/lang/String;)Ljava/util/ArrayList;
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
.end method

.method public abstract rebuildLabelSelection(Lcom/android/contacts/common/model/RawContactDelta;Landroid/widget/Spinner;Landroid/widget/ArrayAdapter;Lcom/android/contacts/common/model/account/AccountType$EditType;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
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
.end method

.method public abstract setCurrentSubId(I)V
.end method

.method public abstract shouldStopSave(Z)Z
.end method

.method public abstract updateAdditionalNumberToDB(Landroid/content/Intent;J)Z
.end method

.method public abstract updateOperation(Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder;Landroid/database/Cursor;I)V
.end method

.method public abstract updateOperationList(Landroid/accounts/Account;Ljava/util/ArrayList;I)Z
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
.end method

.method public abstract updateValues(Landroid/content/Intent;ILandroid/content/ContentValues;)Z
.end method

.method public abstract updateValuesforCopy(Landroid/net/Uri;ILjava/lang/String;Landroid/content/ContentValues;)V
.end method

.method public abstract updateView(Lcom/android/contacts/common/model/RawContactDelta;Landroid/view/View;Lcom/android/contacts/common/model/ValuesDelta;I)Z
.end method
