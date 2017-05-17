.class Lcom/android/contacts/activities/ContactEditorActivity$1;
.super Ljava/lang/Object;
.source "ContactEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/editor/ContactEditorFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/activities/ContactEditorActivity;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactNotFound()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 222
    return-void
.end method

.method public onCustomCreateContactActivityRequested(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    .line 253
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    .line 255
    .local v1, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    iget-object v3, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 254
    invoke-virtual {v1, v3, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 257
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, v0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 259
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getCreateContactActivityClassName()Ljava/lang/String;

    move-result-object v4

    .line 258
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string/jumbo v3, "android.intent.action.INSERT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string/jumbo v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    if-eqz p2, :cond_0

    .line 263
    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 265
    :cond_0
    const-string/jumbo v3, "account_name"

    iget-object v4, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string/jumbo v3, "account_type"

    iget-object v4, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string/jumbo v3, "data_set"

    iget-object v4, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const/high16 v3, 0x2800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 270
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v2}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 271
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 251
    return-void
.end method

.method public onCustomEditContactActivityRequested(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2, "rawContactUri"    # Landroid/net/Uri;
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .param p4, "redirect"    # Z

    .prologue
    .line 278
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    .line 280
    .local v1, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    iget-object v3, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 279
    invoke-virtual {v1, v3, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 282
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 283
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, v0, Lcom/android/contacts/common/model/account/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 284
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v4

    .line 283
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string/jumbo v3, "android.intent.action.EDIT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 287
    if-eqz p3, :cond_0

    .line 288
    invoke-virtual {v2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 291
    :cond_0
    if-eqz p4, :cond_1

    .line 292
    const/high16 v3, 0x2800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 294
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v2}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 295
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 276
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v2}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onEditOtherContactRequested(Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "contactLookupUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 236
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x2800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 238
    const-string/jumbo v1, "addToDefaultDirectory"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 246
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 234
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ContactEditorActivity;->setResult(I)V

    .line 229
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 227
    return-void
.end method

.method public onReverted(Landroid/content/Intent;)V
    .locals 2
    .param p1, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/activities/ContactEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 203
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 201
    return-void
.end method

.method public onSaveFinished(Landroid/content/Intent;)V
    .locals 3
    .param p1, "resultIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 208
    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0, p1}, Lcom/android/contacts/activities/ContactEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 209
    if-eqz p1, :cond_2

    .line 211
    const-string/jumbo v0, "suggestions_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 213
    return-void

    .line 208
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->-get1(Lcom/android/contacts/activities/ContactEditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 207
    return-void
.end method
