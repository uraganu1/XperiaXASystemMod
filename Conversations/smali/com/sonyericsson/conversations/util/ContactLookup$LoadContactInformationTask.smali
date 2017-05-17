.class Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationTask;
.super Landroid/os/AsyncTask;
.source "ContactLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/ContactLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadContactInformationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/util/ContactLookup;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/util/ContactLookup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/util/ContactLookup;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/util/ContactLookup;Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/util/ContactLookup;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationTask;-><init>(Lcom/sonyericsson/conversations/util/ContactLookup;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 458
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {v0}, Lcom/sonyericsson/conversations/util/ContactLookup;->-wrap7(Lcom/sonyericsson/conversations/util/ContactLookup;)V

    .line 460
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    iget-object v1, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->-wrap1(Lcom/sonyericsson/conversations/util/ContactLookup;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->-set0(Lcom/sonyericsson/conversations/util/ContactLookup;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 461
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    iget-object v1, p0, Lcom/sonyericsson/conversations/util/ContactLookup$LoadContactInformationTask;->this$0:Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-static {v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->-wrap3(Lcom/sonyericsson/conversations/util/ContactLookup;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->-set4(Lcom/sonyericsson/conversations/util/ContactLookup;I)I

    .line 462
    const/4 v0, 0x0

    return-object v0
.end method
