.class public Lcom/mediatek/contacts/ext/DefaultSneExtension;
.super Ljava/lang/Object;
.source "DefaultSneExtension.java"

# interfaces
.implements Lcom/mediatek/contacts/ext/ISneExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkNickName(Lcom/android/contacts/common/vcard/ProcessorBase;Landroid/content/Intent;ZI)I
    .locals 1
    .param p1, "processor"    # Lcom/android/contacts/common/vcard/ProcessorBase;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "canShowToast"    # Z
    .param p4, "subId"    # I

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public copySimSneToAccount(Ljava/util/ArrayList;Landroid/accounts/Account;Landroid/net/Uri;I)V
    .locals 0
    .param p2, "targetAccount"    # Landroid/accounts/Account;
    .param p3, "sourceUri"    # Landroid/net/Uri;
    .param p4, "backRef"    # I
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

    .prologue
    .line 121
    .local p1, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    return-void
.end method

.method public editSimSne(Landroid/content/Intent;JIJ)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "indexInSim"    # J
    .param p4, "subId"    # I
    .param p5, "rawContactId"    # J

    .prologue
    .line 31
    return-void
.end method

.method public importSimSne(Ljava/util/ArrayList;Landroid/database/Cursor;I)I
    .locals 1
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "loopCheck"    # I
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

    .prologue
    .line 105
    .local p1, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onEditorBindEditors(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;I)V
    .locals 0
    .param p1, "entity"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "type"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p3, "subId"    # I

    .prologue
    .line 153
    return-void
.end method

.method public updateValues(Landroid/content/Intent;ILandroid/content/ContentValues;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "subId"    # I
    .param p3, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 83
    return-void
.end method

.method public updateValuesforCopy(Landroid/net/Uri;ILjava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "subId"    # I
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "simContentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 137
    return-void
.end method
