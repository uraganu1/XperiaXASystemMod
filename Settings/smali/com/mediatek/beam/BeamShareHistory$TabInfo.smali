.class public Lcom/mediatek/beam/BeamShareHistory$TabInfo;
.super Ljava/lang/Object;
.source "BeamShareHistory.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/beam/BeamShareHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/beam/BeamShareHistory$TabInfo$1;
    }
.end annotation


# instance fields
.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mIsIncoming:Z

.field public final mLabel:Ljava/lang/CharSequence;

.field private mListView:Landroid/widget/ListView;

.field public final mOwner:Lcom/mediatek/beam/BeamShareHistory;

.field public mRootView:Landroid/view/View;

.field private mTabCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/mediatek/beam/BeamShareHistory;


# direct methods
.method static synthetic -wrap0(Lcom/mediatek/beam/BeamShareHistory$TabInfo;)Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->buildTabSpec()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/mediatek/beam/BeamShareHistory;Lcom/mediatek/beam/BeamShareHistory;Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/beam/BeamShareHistory;
    .param p2, "owner"    # Lcom/mediatek/beam/BeamShareHistory;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "isIncoming"    # Z

    .prologue
    .line 301
    iput-object p1, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mTabCursor:Landroid/database/Cursor;

    .line 321
    new-instance v0, Lcom/mediatek/beam/BeamShareHistory$TabInfo$1;

    invoke-direct {v0, p0}, Lcom/mediatek/beam/BeamShareHistory$TabInfo$1;-><init>(Lcom/mediatek/beam/BeamShareHistory$TabInfo;)V

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 303
    iput-object p2, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mOwner:Lcom/mediatek/beam/BeamShareHistory;

    .line 304
    iput-object p3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mLabel:Ljava/lang/CharSequence;

    .line 305
    iput-boolean p4, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mIsIncoming:Z

    .line 302
    return-void
.end method

.method private buildTabSpec()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 329
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mRootView:Landroid/view/View;

    return-object v0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v0}, Lcom/mediatek/beam/BeamShareHistory;->-get6(Lcom/mediatek/beam/BeamShareHistory;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04001c

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mRootView:Landroid/view/View;

    .line 335
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mListView:Landroid/widget/ListView;

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mOwner:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v0}, Lcom/mediatek/beam/BeamShareHistory;->-get0(Lcom/mediatek/beam/BeamShareHistory;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 339
    sget-object v1, Lcom/mediatek/beam/BeamShareTask$BeamShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    .line 341
    iget-boolean v2, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mIsIncoming:Z

    if-eqz v2, :cond_2

    const-string/jumbo v3, "type in (0,2)"

    .line 343
    :goto_0
    const-string/jumbo v5, "_id DESC"

    .line 340
    const/4 v2, 0x0

    .line 342
    const/4 v4, 0x0

    .line 338
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mTabCursor:Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_1
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mTabCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 350
    const-string/jumbo v0, "@M_BeamShareHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tab "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": cursor.getCount() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 351
    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mTabCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 350
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    new-instance v1, Lcom/mediatek/beam/BeamShareTabAdapter;

    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mOwner:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v2}, Lcom/mediatek/beam/BeamShareHistory;->-get0(Lcom/mediatek/beam/BeamShareHistory;)Landroid/app/Activity;

    move-result-object v2

    .line 353
    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mTabCursor:Landroid/database/Cursor;

    const v4, 0x7f04001b

    .line 352
    invoke-direct {v1, v2, v4, v3}, Lcom/mediatek/beam/BeamShareTabAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    invoke-static {v0, v1}, Lcom/mediatek/beam/BeamShareHistory;->-set0(Lcom/mediatek/beam/BeamShareHistory;Lcom/mediatek/beam/BeamShareTabAdapter;)Lcom/mediatek/beam/BeamShareTabAdapter;

    .line 354
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v1}, Lcom/mediatek/beam/BeamShareHistory;->-get1(Lcom/mediatek/beam/BeamShareHistory;)Lcom/mediatek/beam/BeamShareTabAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 355
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 356
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 357
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mRootView:Landroid/view/View;

    return-object v0

    .line 342
    :cond_2
    :try_start_1
    const-string/jumbo v3, "type in (1,3)"
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v6

    .line 345
    .local v6, "ex":Landroid/database/CursorIndexOutOfBoundsException;
    const-string/jumbo v0, "@M_BeamShareHistory"

    const-string/jumbo v1, "check empty share list error:"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private isSupportedDataType(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 6
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mOwner:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v2}, Lcom/mediatek/beam/BeamShareHistory;->-get0(Lcom/mediatek/beam/BeamShareHistory;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 449
    const/high16 v3, 0x10000

    .line 447
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 450
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 452
    const-string/jumbo v2, "@M_BeamShareHistory"

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cannot find proper Activity to handle Intent: mime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 454
    const-string/jumbo v4, "], data["

    .line 453
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 454
    const-string/jumbo v4, "]"

    .line 453
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 452
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return v5

    .line 457
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private openTransferSuccessFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 409
    const-string/jumbo v4, "@M_BeamShareHistory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "openTransferSuccessFile(): filename="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 410
    const-string/jumbo v6, " mimetype="

    .line 409
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    if-nez p1, :cond_0

    .line 413
    const-string/jumbo v4, "@M_BeamShareHistory"

    const-string/jumbo v5, "the file name is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void

    .line 418
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v4, "@M_BeamShareHistory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "file name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 424
    .local v3, "path":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 425
    :cond_1
    invoke-direct {p0, v3, p2}, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->isSupportedDataType(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 426
    iget-object v4, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mOwner:Lcom/mediatek/beam/BeamShareHistory;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/mediatek/beam/BeamShareHistory;->-wrap0(Lcom/mediatek/beam/BeamShareHistory;I)V

    .line 407
    :goto_0
    return-void

    .line 428
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 431
    iget-object v4, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mOwner:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v4}, Lcom/mediatek/beam/BeamShareHistory;->-get0(Lcom/mediatek/beam/BeamShareHistory;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public build(Landroid/view/LayoutInflater;Landroid/widget/TabHost;)V
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "tabHost"    # Landroid/widget/TabHost;

    .prologue
    .line 313
    const-string/jumbo v2, "@M_BeamShareHistory"

    const-string/jumbo v3, "build"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v2, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v2, p1}, Lcom/mediatek/beam/BeamShareHistory;->-set4(Lcom/mediatek/beam/BeamShareHistory;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    .line 315
    iget-boolean v2, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mIsIncoming:Z

    if-eqz v2, :cond_0

    const-string/jumbo v1, "Incoming"

    .line 316
    .local v1, "tabTag":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 317
    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mLabel:Ljava/lang/CharSequence;

    .line 316
    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 317
    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 316
    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 318
    .local v0, "tabSpec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {p2, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 312
    return-void

    .line 315
    .end local v0    # "tabSpec":Landroid/widget/TabHost$TabSpec;
    .end local v1    # "tabTag":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "Outgoing"

    .restart local v1    # "tabTag":Ljava/lang/String;
    goto :goto_0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mTabCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mTabCursor:Landroid/database/Cursor;

    invoke-interface {v3, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 367
    const-string/jumbo v3, "@M_BeamShareHistory"

    const-string/jumbo v4, "onItemClick"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v2, Lcom/mediatek/beam/BeamShareTask;

    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mTabCursor:Landroid/database/Cursor;

    invoke-direct {v2, v3}, Lcom/mediatek/beam/BeamShareTask;-><init>(Landroid/database/Cursor;)V

    .line 370
    .local v2, "task":Lcom/mediatek/beam/BeamShareTask;
    invoke-virtual {v2}, Lcom/mediatek/beam/BeamShareTask;->getData()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "fileData":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 372
    const-string/jumbo v3, "@M_BeamShareHistory"

    const-string/jumbo v4, "the file name is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v3, v1}, Lcom/mediatek/beam/BeamShareHistory;->-set1(Lcom/mediatek/beam/BeamShareHistory;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    :goto_0
    invoke-virtual {v2}, Lcom/mediatek/beam/BeamShareTask;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 381
    invoke-virtual {v2}, Lcom/mediatek/beam/BeamShareTask;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mediatek/beam/BeamShareTask;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->openTransferSuccessFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :goto_1
    return-void

    .line 376
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, "file":Ljava/io/File;
    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/beam/BeamShareHistory;->-set1(Lcom/mediatek/beam/BeamShareHistory;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 383
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {v2}, Lcom/mediatek/beam/BeamShareTask;->getDirection()Lcom/mediatek/beam/BeamShareTask$Direction;

    move-result-object v3

    sget-object v4, Lcom/mediatek/beam/BeamShareTask$Direction;->out:Lcom/mediatek/beam/BeamShareTask$Direction;

    if-ne v3, v4, :cond_2

    .line 385
    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mOwner:Lcom/mediatek/beam/BeamShareHistory;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/mediatek/beam/BeamShareHistory;->-wrap0(Lcom/mediatek/beam/BeamShareHistory;I)V

    goto :goto_1

    .line 388
    :cond_2
    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mOwner:Lcom/mediatek/beam/BeamShareHistory;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/mediatek/beam/BeamShareHistory;->-wrap0(Lcom/mediatek/beam/BeamShareHistory;I)V

    goto :goto_1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string/jumbo v1, "@M_BeamShareHistory"

    const-string/jumbo v2, "onItemLongClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mTabCursor:Landroid/database/Cursor;

    invoke-interface {v1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 399
    new-instance v0, Lcom/mediatek/beam/BeamShareTask;

    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->mTabCursor:Landroid/database/Cursor;

    invoke-direct {v0, v1}, Lcom/mediatek/beam/BeamShareTask;-><init>(Landroid/database/Cursor;)V

    .line 400
    .local v0, "task":Lcom/mediatek/beam/BeamShareTask;
    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-virtual {v0}, Lcom/mediatek/beam/BeamShareTask;->getTaskUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/beam/BeamShareHistory;->-set5(Lcom/mediatek/beam/BeamShareHistory;Landroid/net/Uri;)Landroid/net/Uri;

    .line 401
    const-string/jumbo v1, "@M_BeamShareHistory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Click uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v3}, Lcom/mediatek/beam/BeamShareHistory;->-get7(Lcom/mediatek/beam/BeamShareHistory;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v1, p0, Lcom/mediatek/beam/BeamShareHistory$TabInfo;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/mediatek/beam/BeamShareHistory;->-wrap0(Lcom/mediatek/beam/BeamShareHistory;I)V

    .line 404
    const/4 v1, 0x1

    return v1
.end method
