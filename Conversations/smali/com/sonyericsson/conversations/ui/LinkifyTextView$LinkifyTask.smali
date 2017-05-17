.class Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;
.super Landroid/os/AsyncTask;
.source "LinkifyTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/LinkifyTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinkifyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/text/SpannableString;",
        ">;"
    }
.end annotation


# instance fields
.field private mBodyText:Ljava/lang/CharSequence;

.field private mLinkifyTextViewListener:Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/LinkifyTextView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/LinkifyTextView;Ljava/lang/CharSequence;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/LinkifyTextView;
    .param p2, "bodyText"    # Ljava/lang/CharSequence;
    .param p3, "linkifyTextViewListener"    # Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;->this$0:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;->mBodyText:Ljava/lang/CharSequence;

    .line 151
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;->mLinkifyTextViewListener:Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/LinkifyTextView;Ljava/lang/CharSequence;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/LinkifyTextView;
    .param p2, "bodyText"    # Ljava/lang/CharSequence;
    .param p3, "linkifyTextViewListener"    # Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;-><init>(Lcom/sonyericsson/conversations/ui/LinkifyTextView;Ljava/lang/CharSequence;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/text/SpannableString;
    .locals 2
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 156
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;->mBodyText:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 159
    .local v0, "spannableBodyString":Landroid/text/SpannableString;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getConversationsLinkifyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify;->addLinks(Landroid/text/Spannable;)V

    .line 165
    :goto_0
    return-object v0

    .line 163
    :cond_0
    const/16 v1, 0x1f

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 155
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;->doInBackground([Ljava/lang/Void;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/text/SpannableString;)V
    .locals 6
    .param p1, "spannableString"    # Landroid/text/SpannableString;

    .prologue
    .line 170
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;->this$0:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;->this$0:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v1

    .line 173
    .local v1, "urls":[Landroid/text/style/URLSpan;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;->this$0:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 175
    .local v0, "mm":Landroid/text/method/MovementMethod;
    instance-of v2, v0, Lcom/sonyericsson/conversations/ui/LinkHandler;

    if-nez v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;->this$0:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    new-instance v3, Lcom/sonyericsson/conversations/ui/LinkHandler;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;->this$0:Lcom/sonyericsson/conversations/ui/LinkifyTextView;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;->mLinkifyTextViewListener:Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;

    invoke-direct {v3, v4, v5}, Lcom/sonyericsson/conversations/ui/LinkHandler;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 169
    .end local v0    # "mm":Landroid/text/method/MovementMethod;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "spannableString"    # Ljava/lang/Object;

    .prologue
    .line 169
    check-cast p1, Landroid/text/SpannableString;

    .end local p1    # "spannableString":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;->onPostExecute(Landroid/text/SpannableString;)V

    return-void
.end method
