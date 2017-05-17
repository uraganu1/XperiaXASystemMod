.class Lcom/sonyericsson/conversations/ui/MmsRingtonePreference$1;
.super Lcom/sonyericsson/conversations/ui/util/ClickFilter;
.source "MmsRingtonePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;->onAttachedToActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MmsRingtonePreference$1;->this$0:Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/ClickFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsRingtonePreference$1;->this$0:Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;->-wrap0(Lcom/sonyericsson/conversations/ui/MmsRingtonePreference;)V

    .line 54
    return-void
.end method
