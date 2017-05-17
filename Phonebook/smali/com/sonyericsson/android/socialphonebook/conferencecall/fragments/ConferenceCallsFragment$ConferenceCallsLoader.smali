.class Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment$ConferenceCallsLoader;
.super Landroid/content/CursorLoader;
.source "ConferenceCallsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConferenceCallsLoader"
.end annotation


# static fields
.field private static final LIMIT:Ljava/lang/String; = "LIMIT 50"

.field private static final SELECTION:Ljava/lang/String;

.field private static final SORT_ORDER:Ljava/lang/String; = "ORDER BY date DESC, + calls._id"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "date > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getCutoffTime()J

    move-result-wide v2

    .line 124
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment$ConferenceCallsLoader;->SELECTION:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 135
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/common/provider/SomcCallLogContract$ConferenceCalls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallsFragment$ConferenceCallsLoader;->SELECTION:Ljava/lang/String;

    const-string/jumbo v6, "ORDER BY date DESC, + calls._id LIMIT 50"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method
