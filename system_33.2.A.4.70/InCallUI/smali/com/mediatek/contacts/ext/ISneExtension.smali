.class public interface abstract Lcom/mediatek/contacts/ext/ISneExtension;
.super Ljava/lang/Object;
.source "ISneExtension.java"


# virtual methods
.method public abstract checkNickName(Lcom/android/contacts/common/vcard/ProcessorBase;Landroid/content/Intent;ZI)I
.end method

.method public abstract copySimSneToAccount(Ljava/util/ArrayList;Landroid/accounts/Account;Landroid/net/Uri;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/accounts/Account;",
            "Landroid/net/Uri;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract editSimSne(Landroid/content/Intent;JIJ)V
.end method

.method public abstract importSimSne(Ljava/util/ArrayList;Landroid/database/Cursor;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/database/Cursor;",
            "I)I"
        }
    .end annotation
.end method

.method public abstract onEditorBindEditors(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;I)V
.end method

.method public abstract updateValues(Landroid/content/Intent;ILandroid/content/ContentValues;)V
.end method

.method public abstract updateValuesforCopy(Landroid/net/Uri;ILjava/lang/String;Landroid/content/ContentValues;)V
.end method
