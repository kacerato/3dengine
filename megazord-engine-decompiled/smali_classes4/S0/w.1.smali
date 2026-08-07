.class public final synthetic LS0/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ1/j;


# static fields
.field public static final synthetic a:LS0/w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LS0/w;

    invoke-direct {v0}, LS0/w;-><init>()V

    sput-object v0, LS0/w;->a:LS0/w;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)LQ1/k;
    .locals 0

    check-cast p1, Ljava/util/Map;

    sget p1, LS0/h;->h:I

    const/4 p1, 0x0

    invoke-static {p1}, LQ1/n;->g(Ljava/lang/Object;)LQ1/k;

    move-result-object p1

    return-object p1
.end method
