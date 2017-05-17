.class Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$1;
.super Landroid/database/DataSetObserver;
.source "ContactPickFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;)Landroid/app/Activity;

    move-result-object v0

    .line 322
    const-string/jumbo v1, "input_method"

    .line 321
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$1;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 320
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 326
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    iget-object v8, v8, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    if-eqz v8, :cond_2

    .line 327
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$1;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 328
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    iget-object v8, v8, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v8}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v6

    .line 329
    .local v6, "lastConstraint":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getCount()I

    move-result v1

    .line 330
    .local v1, "count":I
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_3

    if-lez v1, :cond_3

    .line 331
    const/16 v8, 0xa

    if-le v1, v8, :cond_0

    const/16 v1, 0xa

    .line 332
    :cond_0
    new-array v0, v1, [Landroid/view/inputmethod/CompletionInfo;

    .line 333
    .local v0, "completionInfo":[Landroid/view/inputmethod/CompletionInfo;
    const/4 v7, 0x0

    .line 334
    .local v7, "n":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 336
    :try_start_0
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->getAdapter()Lcom/sonyericsson/android/socialphonebook/list/ContactsListAdapter;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;

    invoke-virtual {v8, v5}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickAdapter;->getContactDisplayName(I)Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "displayName":Ljava/lang/String;
    new-instance v8, Landroid/view/inputmethod/CompletionInfo;

    int-to-long v10, v5

    invoke-direct {v8, v10, v11, v5, v2}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    aput-object v8, v0, v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    add-int/lit8 v7, v7, 0x1

    .line 334
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 343
    .end local v2    # "displayName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 344
    .local v3, "e":Landroid/database/CursorIndexOutOfBoundsException;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-get0()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "CursorIndexOutOfBoundsException was thrown"

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v0, 0x0

    .line 349
    .end local v0    # "completionInfo":[Landroid/view/inputmethod/CompletionInfo;
    .end local v3    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$1;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    iget-object v9, v9, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v8, v9, v0}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 325
    .end local v1    # "count":I
    .end local v5    # "i":I
    .end local v6    # "lastConstraint":Ljava/lang/CharSequence;
    .end local v7    # "n":I
    :cond_2
    :goto_2
    return-void

    .line 339
    .restart local v0    # "completionInfo":[Landroid/view/inputmethod/CompletionInfo;
    .restart local v1    # "count":I
    .restart local v5    # "i":I
    .restart local v6    # "lastConstraint":Ljava/lang/CharSequence;
    .restart local v7    # "n":I
    :catch_1
    move-exception v4

    .line 340
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->-get0()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "IllegalArgumentException was thrown"

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "completionInfo":[Landroid/view/inputmethod/CompletionInfo;
    goto :goto_1

    .line 351
    .end local v0    # "completionInfo":[Landroid/view/inputmethod/CompletionInfo;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "i":I
    .end local v7    # "n":I
    :cond_3
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$1;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    iget-object v9, v9, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v8, v9, v10}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_2

    .line 354
    .end local v1    # "count":I
    .end local v6    # "lastConstraint":Ljava/lang/CharSequence;
    :cond_4
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$1;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;

    iget-object v9, v9, Lcom/sonyericsson/android/socialphonebook/contactpicker/ContactPickFragment;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v8, v9, v10}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_2
.end method
