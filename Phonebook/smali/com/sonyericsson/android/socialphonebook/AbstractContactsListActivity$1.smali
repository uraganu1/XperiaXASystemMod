.class Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$1;
.super Landroid/database/DataSetObserver;
.source "AbstractContactsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$1;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 335
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 339
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    iget-object v9, v9, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    if-eqz v9, :cond_2

    .line 340
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$1;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 341
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    iget-object v9, v9, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v9}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v7

    .line 342
    .local v7, "lastConstraint":Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 343
    .local v1, "count":I
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 344
    if-lez v1, :cond_4

    .line 345
    const/16 v9, 0xa

    if-le v1, v9, :cond_0

    const/16 v1, 0xa

    .line 346
    :cond_0
    new-array v0, v1, [Landroid/view/inputmethod/CompletionInfo;

    .line 347
    .local v0, "completionInfo":[Landroid/view/inputmethod/CompletionInfo;
    const/4 v8, 0x0

    .line 348
    .local v8, "n":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_1

    .line 349
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    invoke-virtual {v9}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-interface {v9, v6}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 350
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_3

    .line 368
    .end local v0    # "completionInfo":[Landroid/view/inputmethod/CompletionInfo;
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$1;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    iget-object v10, v10, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v9, v10, v0}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 338
    .end local v1    # "count":I
    .end local v6    # "i":I
    .end local v7    # "lastConstraint":Ljava/lang/CharSequence;
    .end local v8    # "n":I
    :cond_2
    :goto_2
    return-void

    .line 355
    .restart local v0    # "completionInfo":[Landroid/view/inputmethod/CompletionInfo;
    .restart local v1    # "count":I
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "i":I
    .restart local v7    # "lastConstraint":Ljava/lang/CharSequence;
    .restart local v8    # "n":I
    :cond_3
    :try_start_0
    const-string/jumbo v9, "display_name"

    .line 354
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, "displayName":Ljava/lang/String;
    new-instance v9, Landroid/view/inputmethod/CompletionInfo;

    int-to-long v10, v6

    invoke-direct {v9, v10, v11, v6, v3}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    aput-object v9, v0, v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    add-int/lit8 v8, v8, 0x1

    .line 348
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 362
    .end local v3    # "displayName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 363
    .local v4, "e":Landroid/database/CursorIndexOutOfBoundsException;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->-get0()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "CursorIndexOutOfBoundsException was thrown"

    invoke-static {v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, "completionInfo":[Landroid/view/inputmethod/CompletionInfo;
    goto :goto_1

    .line 358
    .end local v4    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    .local v0, "completionInfo":[Landroid/view/inputmethod/CompletionInfo;
    :catch_1
    move-exception v5

    .line 359
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->-get0()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "IllegalArgumentException was thrown"

    invoke-static {v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "completionInfo":[Landroid/view/inputmethod/CompletionInfo;
    goto :goto_1

    .line 370
    .end local v0    # "completionInfo":[Landroid/view/inputmethod/CompletionInfo;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "i":I
    .end local v8    # "n":I
    :cond_4
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$1;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    iget-object v10, v10, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v9, v10, v11}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_2

    .line 373
    .end local v1    # "count":I
    .end local v7    # "lastConstraint":Ljava/lang/CharSequence;
    :cond_5
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$1;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;

    iget-object v10, v10, Lcom/sonyericsson/android/socialphonebook/AbstractContactsListActivity;->mSearchBox:Landroid/widget/SearchView;

    invoke-virtual {v9, v10, v11}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_2
.end method
