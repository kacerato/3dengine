.class public interface abstract LG/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LG/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# static fields
.field public static final a:LG/a$c;

.field public static final b:LG/a$c;

.field public static final c:LG/a$c;

.field public static final d:LG/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LG/a$c$a;

    invoke-direct {v0}, LG/a$c$a;-><init>()V

    sput-object v0, LG/a$c;->a:LG/a$c;

    new-instance v0, LG/a$c$b;

    invoke-direct {v0}, LG/a$c$b;-><init>()V

    sput-object v0, LG/a$c;->b:LG/a$c;

    new-instance v1, LG/a$c$c;

    invoke-direct {v1}, LG/a$c$c;-><init>()V

    sput-object v1, LG/a$c;->c:LG/a$c;

    sput-object v0, LG/a$c;->d:LG/a$c;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)V
.end method
