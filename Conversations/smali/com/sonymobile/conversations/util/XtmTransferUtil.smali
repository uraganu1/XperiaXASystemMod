.class public Lcom/sonymobile/conversations/util/XtmTransferUtil;
.super Ljava/lang/Object;
.source "XtmTransferUtil.java"


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/sonymobile/conversations/util/XtmTransferUtil;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1()Landroid/content/ContentResolver;
    .locals 1

    sget-object v0, Lcom/sonymobile/conversations/util/XtmTransferUtil;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "content://com.sonymobile.xperiatransfermobile.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/conversations/util/XtmTransferUtil;->CONTENT_URI:Landroid/net/Uri;

    .line 42
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/conversations/util/XtmTransferUtil;->mContentResolver:Landroid/content/ContentResolver;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchXtmStatusAndUpdateFooter(Lcom/sonyericsson/conversations/ui/ConversationListFragment$XtmTransferListener;)V
    .locals 2
    .param p0, "xtmListener"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment$XtmTransferListener;

    .prologue
    .line 48
    new-instance v0, Lcom/sonymobile/conversations/util/XtmTransferUtil$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/conversations/util/XtmTransferUtil$1;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment$XtmTransferListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonymobile/conversations/util/XtmTransferUtil$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    return-void
.end method
