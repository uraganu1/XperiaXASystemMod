.class Lcom/android/contacts/widget/MultiShrinkScroller$7;
.super Ljava/lang/Object;
.source "MultiShrinkScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/widget/MultiShrinkScroller;->setExtraTitleInformation(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/widget/MultiShrinkScroller;


# direct methods
.method constructor <init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/widget/MultiShrinkScroller;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$7;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$7;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->-wrap5(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    .line 429
    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$7;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->-wrap3(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    .line 427
    return-void
.end method
