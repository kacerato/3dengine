.class public Ls7/a$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB4/k$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls7/a$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls7/a$f;


# direct methods
.method public constructor <init>(Ls7/a$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Ls7/a$f$a;->a:Ls7/a$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LB4/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss dd-MM-yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ls7/a$f$a$a;

    invoke-direct {v1, p0, p1, v0}, Ls7/a$f$a$a;-><init>(Ls7/a$f$a;LB4/d;Ljava/text/SimpleDateFormat;)V

    invoke-static {v1}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
