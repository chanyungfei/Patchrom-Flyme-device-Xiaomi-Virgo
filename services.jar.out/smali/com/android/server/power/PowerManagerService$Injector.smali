.class Lcom/android/server/power/PowerManagerService$Injector;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# static fields
.field static sButtonLight:Lcom/android/server/lights/Light;

.field static sButtonLightTimeout:I

.field static sButtonLightTimeoutTask:Ljava/lang/Runnable;

.field static sButtonLightTurnOff:Z

.field static sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$Injector$1;-><init>()V

    sput-object v0, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setButtonLight(Lcom/android/server/power/PowerManagerService;Lcom/android/server/lights/Light;)V
    .locals 5
    .param p0, "pm"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "buttonLight"    # Lcom/android/server/lights/Light;

    .prologue
    .line 100
    sput-object p1, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLight:Lcom/android/server/lights/Light;

    .line 101
    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->access$100(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_buttons_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    # getter for: Lcom/android/server/power/PowerManagerService;->mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$SettingsObserver;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 105
    return-void
.end method

.method static setButtonLightTimeout(I)V
    .locals 6
    .param p0, "lightSensorButtonBrightness"    # I

    .prologue
    .line 140
    sget-boolean v0, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTurnOff:Z

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTurnOff:Z

    .line 142
    sget-object v0, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0, p0}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 144
    :cond_0
    sget-object v0, Lcom/android/server/power/PowerManagerService$Injector;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 145
    sget v0, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTimeout:I

    if-lez v0, :cond_1

    .line 146
    sget-object v0, Lcom/android/server/power/PowerManagerService$Injector;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget v4, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTimeout:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 148
    :cond_1
    return-void
.end method

.method static setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 108
    sput-object p0, Lcom/android/server/power/PowerManagerService$Injector;->sHandler:Landroid/os/Handler;

    .line 109
    return-void
.end method

.method static turnOffButtonLight(Lcom/android/server/power/PowerManagerService;)V
    .locals 3
    .param p0, "pm"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 151
    # invokes: Lcom/android/server/power/PowerManagerService;->getDesiredScreenPolicyLocked()I
    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->access$200(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    .line 152
    .local v0, "newScreenState":I
    if-nez v0, :cond_0

    sget-boolean v1, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTurnOff:Z

    if-nez v1, :cond_0

    .line 153
    sget-object v1, Lcom/android/server/power/PowerManagerService$Injector;->sHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    sget-object v1, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v1}, Lcom/android/server/lights/Light;->turnOff()V

    .line 155
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTurnOff:Z

    .line 157
    :cond_0
    return-void
.end method

.method static updateButtonLightTimeout(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lightSensorButtonBrightness"    # I

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_buttons_timeout"

    const/16 v3, 0x1388

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 129
    .local v0, "buttonLightTimeout":I
    sget v1, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTimeout:I

    if-eq v0, v1, :cond_0

    .line 130
    sput v0, Lcom/android/server/power/PowerManagerService$Injector;->sButtonLightTimeout:I

    .line 131
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService$Injector;->setButtonLightTimeout(I)V

    .line 133
    :cond_0
    return-void
.end method
