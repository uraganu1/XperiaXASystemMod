.class public Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;
.super Ljava/lang/Object;
.source "RcsSettingsData.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FALSE:Ljava/lang/String;

.field public static final TRUE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "content://com.sonymobile.rcs.settings/settings"

    .line 37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->CONTENT_URI:Landroid/net/Uri;

    .line 120
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->TRUE:Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/provider/settings/RcsSettingsData;->FALSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
