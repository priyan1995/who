<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'who' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'OobKQg)/@K!S:gaxJP6=:M_2)am4{-RUg]]4e(MR:_hY]vQ|j(%Q?jFHpbc+3jdM' );
define( 'SECURE_AUTH_KEY',  '{E#o*h%7T=J!hW[MGMK;{iUjf@Okfq[dVpg}KQsDhGr03INt;&FMI`LAP^=|Y6{s' );
define( 'LOGGED_IN_KEY',    'qPFu~layCn3M^ldwAYu-_.QW)boB#cEXdF6;vuyT!5?ab`jm}V%@S6UcoSDYDNj{' );
define( 'NONCE_KEY',        'G,!nXO?5}ajH3b.Drt2[V76A8G.;qok*v9=K-:A-GEah]yw&>ra8(cqe3@qk.ylV' );
define( 'AUTH_SALT',        'j5Yk2HuAtAzm*<~H-z&GVc_0&*VsNYRAK<ztvJ(,,ffN8SU=}wlcIM[zNMx7&*:?' );
define( 'SECURE_AUTH_SALT', 'KUrjW]LY_Au#DzAZjg6s<cGa,[WqmI778=5xxuP_n7AS^/W~_&-}Lrt)E;-W;1oC' );
define( 'LOGGED_IN_SALT',   'G,T;|}ityi+>dTgRN5W&X}c!)HlOzzE(*Wg;=|j.)u@{#!SvNw^m-b4uLqrgnGen' );
define( 'NONCE_SALT',       '$E2BdQD^t)mT/$&CrvUn&Zkr,!2B`J+O:1Yx2C#4>Pvv.hJ`#S}~+IbY/.Y](&R9' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
